part of 'edit_project_materials_bloc.dart';

@freezed
class EditProjectMaterialsState with _$EditProjectMaterialsState {
  const factory EditProjectMaterialsState.initial({
    @Default([]) List<Material> materials,
  }) = Initial;
  const factory EditProjectMaterialsState.loading({
    @Default([]) List<Material> materials,
  }) = Loading;
  const factory EditProjectMaterialsState.loaded({
    @Default([]) List<Material> materials,
  }) = Loaded;
  const factory EditProjectMaterialsState.deleting({
    @Default([]) List<Material> materials,
  }) = Deleting;
  const factory EditProjectMaterialsState.deleted({
    @Default([]) List<Material> materials,
  }) = Deleted;
  const factory EditProjectMaterialsState.error({
    @Default([]) List<Material> materials,
    required String message,
  }) = Error;
}
