import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:material_repository/material_repository.dart';
import 'package:stream_transform/stream_transform.dart';

part 'select_material_event.dart';
part 'select_material_state.dart';
part 'select_material_bloc.freezed.dart';

EventTransformer<Event> debounce<Event>(Duration duration) {
  return (events, mapper) => events.debounce(duration).switchMap(mapper);
}

class SelectMaterialBloc
    extends Bloc<SelectMaterialEvent, SelectMaterialState> {
  SelectMaterialBloc({
    required MaterialRepository materialRepository,
    required int projectId,
  })  : _materialRepository = materialRepository,
        _projectId = projectId,
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
        selectedMaterials: {...state.selectedMaterials},
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
        selectedMaterials: {...state.selectedMaterials},
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
        selectedMaterials: {...state.selectedMaterials},
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
        selectedMaterials: {...state.selectedMaterials},
      ),
    );
    try {
      final selectedMaterials = state.selectedMaterials.entries
          .where((element) => element.value)
          .map((e) => e.key)
          .toList();
      await _materialRepository.saveProjectMaterials(
        _projectId,
        selectedMaterials,
      );

      emit(
        Added(
          materials: [...state.materials],
          selectedMaterials: {...state.selectedMaterials},
        ),
      );
    } catch (e) {
      emit(
        Error(
          message: e.toString(),
          materials: [...state.materials],
          selectedMaterials: {...state.selectedMaterials},
        ),
      );
    }
  }

  void _onMaterialSelected(
    _MaterialSelected event,
    Emitter<SelectMaterialState> emit,
  ) {
    switch (state) {
      case Searching():
        return emit(
          Searching(
            materials: [...state.materials],
            selectedMaterials: {
              ...state.selectedMaterials,
              event.materialId: !state.selectedMaterials[event.materialId]!,
            },
          ),
        );
    }

    emit(
      Loaded(
        materials: [...state.materials],
        selectedMaterials: {
          ...state.selectedMaterials,
          event.materialId: !state.selectedMaterials[event.materialId]!,
        },
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
      final projectsMaterials = await _materialRepository.getProjectMaterials(
        _projectId,
      );
      final selectedMaterials = <int, bool>{};

      for (final material in _materials) {
        selectedMaterials[material.id] = false;
      }

      for (final material in projectsMaterials) {
        selectedMaterials[material.id] = true;
      }

      emit(
        Loaded(
          materials: _materials,
          selectedMaterials: selectedMaterials,
        ),
      );
    } catch (e) {
      emit(
        Error(
          message: e.toString(),
          materials: [],
          selectedMaterials: {},
        ),
      );
    }
  }
}
