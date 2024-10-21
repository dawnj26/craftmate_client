part of 'user_material_bloc.dart';

@freezed
class UserMaterialEvent with _$UserMaterialEvent {
  const factory UserMaterialEvent.started() = _Started;
  const factory UserMaterialEvent.reload() = _Reload;
  const factory UserMaterialEvent.deleteMaterial({
    required int materialId,
  }) = _DeleteMaterial;
  const factory UserMaterialEvent.deleteMaterials({
    required List<int> materialIds,
  }) = _DeleteMaterials;
  const factory UserMaterialEvent.categoryChanged({
    int? categoryId,
  }) = _CategoryChanged;
  const factory UserMaterialEvent.sortChanged({
    required MaterialSort sort,
    required SortOrder order,
  }) = _SortChanged;
}
