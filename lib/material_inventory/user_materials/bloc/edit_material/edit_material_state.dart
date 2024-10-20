part of 'edit_material_bloc.dart';

@freezed
class EditMaterialState with _$EditMaterialState {
  const factory EditMaterialState.initial({
    @Default(MaterialName.pure()) MaterialName name,
    @Default(MaterialDescription.pure()) MaterialDescription description,
    @Default(MaterialCategoryDropdown.pure()) MaterialCategoryDropdown category,
    @Default(1) int quantity,
    @Default([]) List<MaterialCategory> categories,
    String? imagePath,
  }) = Initial;
  const factory EditMaterialState.loading({
    @Default(MaterialName.pure()) MaterialName name,
    @Default(MaterialDescription.pure()) MaterialDescription description,
    @Default(MaterialCategoryDropdown.pure()) MaterialCategoryDropdown category,
    @Default(1) int quantity,
    @Default([]) List<MaterialCategory> categories,
    String? imagePath,
  }) = Loading;
  const factory EditMaterialState.normal({
    @Default(MaterialName.pure()) MaterialName name,
    @Default(MaterialDescription.pure()) MaterialDescription description,
    @Default(MaterialCategoryDropdown.pure()) MaterialCategoryDropdown category,
    @Default(1) int quantity,
    @Default([]) List<MaterialCategory> categories,
    String? imagePath,
  }) = Normal;
  const factory EditMaterialState.changed({
    @Default(MaterialName.pure()) MaterialName name,
    @Default(MaterialDescription.pure()) MaterialDescription description,
    @Default(MaterialCategoryDropdown.pure()) MaterialCategoryDropdown category,
    @Default(1) int quantity,
    @Default([]) List<MaterialCategory> categories,
    String? imagePath,
  }) = Changed;
  const factory EditMaterialState.uploading({
    @Default(MaterialName.pure()) MaterialName name,
    @Default(MaterialDescription.pure()) MaterialDescription description,
    @Default(MaterialCategoryDropdown.pure()) MaterialCategoryDropdown category,
    @Default(1) int quantity,
    @Default([]) List<MaterialCategory> categories,
    String? imagePath,
  }) = Uploading;
  const factory EditMaterialState.uploaded({
    @Default(MaterialName.pure()) MaterialName name,
    @Default(MaterialDescription.pure()) MaterialDescription description,
    @Default(MaterialCategoryDropdown.pure()) MaterialCategoryDropdown category,
    @Default(1) int quantity,
    @Default([]) List<MaterialCategory> categories,
    String? imagePath,
  }) = Uploaded;
  const factory EditMaterialState.success({
    @Default(MaterialName.pure()) MaterialName name,
    @Default(MaterialDescription.pure()) MaterialDescription description,
    @Default(MaterialCategoryDropdown.pure()) MaterialCategoryDropdown category,
    @Default(1) int quantity,
    @Default([]) List<MaterialCategory> categories,
    String? imagePath,
  }) = Success;
  const factory EditMaterialState.error(
    String message, {
    @Default(MaterialName.pure()) MaterialName name,
    @Default(MaterialDescription.pure()) MaterialDescription description,
    @Default(MaterialCategoryDropdown.pure()) MaterialCategoryDropdown category,
    @Default(1) int quantity,
    String? imagePath,
    @Default([]) List<MaterialCategory> categories,
  }) = Error;
}
