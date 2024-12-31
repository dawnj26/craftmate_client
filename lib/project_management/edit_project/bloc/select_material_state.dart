part of 'select_material_bloc.dart';

@freezed
class SelectMaterialState with _$SelectMaterialState {
  const factory SelectMaterialState.initial({
    @Default([]) List<Material> materials,
    @Default([]) List<Material> selectedMaterials,
  }) = Initial;
  const factory SelectMaterialState.adding({
    @Default([]) List<Material> materials,
    @Default([]) List<Material> selectedMaterials,
  }) = Adding;
  const factory SelectMaterialState.searching({
    @Default([]) List<Material> materials,
    @Default([]) List<Material> selectedMaterials,
  }) = Searching;
  const factory SelectMaterialState.added({
    @Default([]) List<Material> materials,
    @Default([]) List<Material> selectedMaterials,
  }) = Added;
  const factory SelectMaterialState.loading({
    @Default([]) List<Material> materials,
    @Default([]) List<Material> selectedMaterials,
  }) = Loading;
  const factory SelectMaterialState.loaded({
    required List<Material> materials,
    required List<Material> selectedMaterials,
  }) = Loaded;
  const factory SelectMaterialState.error({
    required String message,
    @Default([]) List<Material> materials,
    @Default([]) List<Material> selectedMaterials,
  }) = Error;
}
