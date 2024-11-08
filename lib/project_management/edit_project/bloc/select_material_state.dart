part of 'select_material_bloc.dart';

@freezed
class SelectMaterialState with _$SelectMaterialState {
  const factory SelectMaterialState.initial({
    @Default([]) List<Material> materials,
    @Default({}) Map<int, bool> selectedMaterials,
  }) = Initial;
  const factory SelectMaterialState.adding({
    @Default([]) List<Material> materials,
    @Default({}) Map<int, bool> selectedMaterials,
  }) = Adding;
  const factory SelectMaterialState.searching({
    @Default([]) List<Material> materials,
    @Default({}) Map<int, bool> selectedMaterials,
  }) = Searching;
  const factory SelectMaterialState.added({
    @Default([]) List<Material> materials,
    @Default({}) Map<int, bool> selectedMaterials,
  }) = Added;
  const factory SelectMaterialState.loading({
    @Default([]) List<Material> materials,
    @Default({}) Map<int, bool> selectedMaterials,
  }) = Loading;
  const factory SelectMaterialState.loaded({
    required List<Material> materials,
    required Map<int, bool> selectedMaterials,
  }) = Loaded;
  const factory SelectMaterialState.error({
    required String message,
    @Default([]) List<Material> materials,
    @Default({}) Map<int, bool> selectedMaterials,
  }) = Error;
}
