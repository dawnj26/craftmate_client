import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:material_repository/material_repository.dart';

part 'edit_project_materials_event.dart';
part 'edit_project_materials_state.dart';
part 'edit_project_materials_bloc.freezed.dart';

class EditProjectMaterialsBloc
    extends Bloc<EditProjectMaterialsEvent, EditProjectMaterialsState> {
  EditProjectMaterialsBloc({
    required MaterialRepository materialRepo,
    required int projectId,
  })  : _materialRepo = materialRepo,
        _projectId = projectId,
        super(const Initial()) {
    on<_Started>(_onStarted);
    on<_AddMaterial>(_onAddMaterial);
    on<_DeleteMaterials>(_onDeleteMaterials);
  }

  final MaterialRepository _materialRepo;
  final int _projectId;

  Future<void> _onDeleteMaterials(
    _DeleteMaterials event,
    Emitter<EditProjectMaterialsState> emit,
  ) async {
    emit(EditProjectMaterialsState.deleting(materials: [...state.materials]));

    try {
      final materials = await _materialRepo.deleteProjectMaterials(
        _projectId,
        event.materialIds,
      );
      emit(EditProjectMaterialsState.deleted(materials: materials));
    } on MaterialException catch (e) {
      emit(
        EditProjectMaterialsState.error(
          materials: [...state.materials],
          message: e.message,
        ),
      );
    }
  }

  Future<void> _onAddMaterial(
    _AddMaterial event,
    Emitter<EditProjectMaterialsState> emit,
  ) async {
    emit(EditProjectMaterialsState.loading(materials: [...state.materials]));

    try {
      final materials =
          await _materialRepo.addMaterials(_projectId, event.materialId);
      emit(EditProjectMaterialsState.loaded(materials: materials));
    } on MaterialException catch (e) {
      emit(
        EditProjectMaterialsState.error(
          materials: [...state.materials],
          message: e.message,
        ),
      );
    }
  }

  void _onStarted(
    _Started event,
    Emitter<EditProjectMaterialsState> emit,
  ) {
    emit(EditProjectMaterialsState.loaded(materials: event.materials));
  }
}
