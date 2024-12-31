import 'package:bloc/bloc.dart';
import 'package:craftmate_client/helpers/stream_helper.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:material_repository/material_repository.dart';

part 'select_material_event.dart';
part 'select_material_state.dart';
part 'select_material_bloc.freezed.dart';

class SelectMaterialBloc
    extends Bloc<SelectMaterialEvent, SelectMaterialState> {
  SelectMaterialBloc({
    required MaterialRepository materialRepository,
    required int projectId,
    required bool forStartedProject,
  })  : _materialRepository = materialRepository,
        _projectId = projectId,
        _forStartedProject = forStartedProject,
        super(const Initial()) {
    on<_Started>(_onStarted);
    on<_MaterialSelected>(_onMaterialSelected);
    on<_AddedMaterials>(_onAddedMaterials);
    on<_SearchStarted>(_onSearchStarted);
    on<_SearchCanceled>(_onSearchCanceled);
    on<_Search>(
      _onSearch,
      transformer: debounce(const Duration(milliseconds: 300)),
    );
  }

  final MaterialRepository _materialRepository;
  final int _projectId;
  late final List<Material> _materials;
  final bool _forStartedProject;

  void _onSearch(
    _Search event,
    Emitter<SelectMaterialState> emit,
  ) {
    emit(
      Searching(
        materials: _materials
            .where(
              (element) => element.name
                  .toLowerCase()
                  .contains(event.query.toLowerCase()),
            )
            .toList(),
        selectedMaterials: [...state.selectedMaterials],
      ),
    );
  }

  void _onSearchCanceled(
    _SearchCanceled event,
    Emitter<SelectMaterialState> emit,
  ) {
    emit(
      Loaded(
        materials: [..._materials],
        selectedMaterials: [...state.selectedMaterials],
      ),
    );
  }

  void _onSearchStarted(
    _SearchStarted event,
    Emitter<SelectMaterialState> emit,
  ) {
    emit(
      Searching(
        materials: [...state.materials],
        selectedMaterials: [...state.selectedMaterials],
      ),
    );
  }

  Future<void> _onAddedMaterials(
    _AddedMaterials event,
    Emitter<SelectMaterialState> emit,
  ) async {
    emit(
      Adding(
        materials: [...state.materials],
        selectedMaterials: [...state.selectedMaterials],
      ),
    );
    try {
      final selectedMaterials =
          state.selectedMaterials.map((material) => material.id).toList();
      final quantities = state.selectedMaterials
          .map((material) => material.materialQuantity ?? 1)
          .toList();
      if (_forStartedProject) {
        await _materialRepository.saveProjectUsedMaterials(
          _projectId,
          selectedMaterials,
          quantities,
        );
      } else {
        await _materialRepository.saveProjectMaterials(
          _projectId,
          selectedMaterials,
          quantities,
        );
      }

      emit(
        Added(
          materials: [...state.materials],
          selectedMaterials: [...state.selectedMaterials],
        ),
      );
    } catch (e) {
      emit(
        Error(
          message: e.toString(),
          materials: [...state.materials],
          selectedMaterials: [...state.selectedMaterials],
        ),
      );
    }
  }

  void _onMaterialSelected(
    _MaterialSelected event,
    Emitter<SelectMaterialState> emit,
  ) {
    final selectedMaterials = event.isSelected
        ? state.selectedMaterials
            .where((m) => m.id != event.material.id)
            .toList()
        : [
            ...state.selectedMaterials,
            event.material.copyWith(materialQuantity: event.quantity),
          ];

    switch (state) {
      case Searching():
        return emit(
          Searching(
            materials: [...state.materials],
            selectedMaterials: selectedMaterials,
          ),
        );
    }

    emit(
      Loaded(
        materials: [...state.materials],
        selectedMaterials: selectedMaterials,
      ),
    );
  }

  Future<void> _onStarted(
    _Started event,
    Emitter<SelectMaterialState> emit,
  ) async {
    emit(const Loading());
    try {
      _materials = await _materialRepository.getMaterials();
      final projectsMaterials = _forStartedProject
          ? await _materialRepository.getProjectUsedMaterials(_projectId)
          : await _materialRepository.getProjectMaterials(
              _projectId,
            );

      emit(
        Loaded(
          materials: _materials,
          selectedMaterials: [...projectsMaterials],
        ),
      );
    } catch (e) {
      emit(
        Error(
          message: e.toString(),
          materials: [],
          selectedMaterials: [],
        ),
      );
    }
  }
}
