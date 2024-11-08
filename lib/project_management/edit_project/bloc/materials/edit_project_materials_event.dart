part of 'edit_project_materials_bloc.dart';

@freezed
class EditProjectMaterialsEvent with _$EditProjectMaterialsEvent {
  const factory EditProjectMaterialsEvent.started({
    required List<Material> materials,
  }) = _Started;
  const factory EditProjectMaterialsEvent.reloaded() = _Reloaded;
  const factory EditProjectMaterialsEvent.addMaterial({
    required List<int> materialId,
  }) = _AddMaterial;
  const factory EditProjectMaterialsEvent.deleteMaterials({
    required List<int> materialIds,
  }) = _DeleteMaterials;
}
