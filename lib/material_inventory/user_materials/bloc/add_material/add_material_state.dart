part of 'add_material_bloc.dart';

@freezed
class AddMaterialState with _$AddMaterialState {
  const factory AddMaterialState.initial({
    @Default(MaterialName.pure()) MaterialName name,
    @Default(MaterialDescription.pure()) MaterialDescription description,
    @Default(MaterialCategoryDropdown.pure()) MaterialCategoryDropdown category,
    @Default(1) int quantity,
    @Default([]) List<MaterialCategory> categories,
    String? imagePath,
  }) = _Initial;
  const factory AddMaterialState.loading({
    @Default(MaterialName.pure()) MaterialName name,
    @Default(MaterialDescription.pure()) MaterialDescription description,
    @Default(MaterialCategoryDropdown.pure()) MaterialCategoryDropdown category,
    @Default(1) int quantity,
    @Default([]) List<MaterialCategory> categories,
    String? imagePath,
  }) = _Loading;
  const factory AddMaterialState.normal({
    @Default(MaterialName.pure()) MaterialName name,
    @Default(MaterialDescription.pure()) MaterialDescription description,
    @Default(MaterialCategoryDropdown.pure()) MaterialCategoryDropdown category,
    @Default(1) int quantity,
    @Default([]) List<MaterialCategory> categories,
    String? imagePath,
  }) = _Normal;
  const factory AddMaterialState.uploading({
    @Default(MaterialName.pure()) MaterialName name,
    @Default(MaterialDescription.pure()) MaterialDescription description,
    @Default(MaterialCategoryDropdown.pure()) MaterialCategoryDropdown category,
    @Default(1) int quantity,
    @Default([]) List<MaterialCategory> categories,
    String? imagePath,
  }) = _Uploading;
  const factory AddMaterialState.uploaded({
    @Default(MaterialName.pure()) MaterialName name,
    @Default(MaterialDescription.pure()) MaterialDescription description,
    @Default(MaterialCategoryDropdown.pure()) MaterialCategoryDropdown category,
    @Default(1) int quantity,
    @Default([]) List<MaterialCategory> categories,
    String? imagePath,
  }) = _Uploaded;
  const factory AddMaterialState.success({
    @Default(MaterialName.pure()) MaterialName name,
    @Default(MaterialDescription.pure()) MaterialDescription description,
    @Default(MaterialCategoryDropdown.pure()) MaterialCategoryDropdown category,
    @Default(1) int quantity,
    @Default([]) List<MaterialCategory> categories,
    String? imagePath,
  }) = _Success;
  const factory AddMaterialState.error(
    String message, {
    @Default(MaterialName.pure()) MaterialName name,
    @Default(MaterialDescription.pure()) MaterialDescription description,
    @Default(MaterialCategoryDropdown.pure()) MaterialCategoryDropdown category,
    @Default(1) int quantity,
    String? imagePath,
    @Default([]) List<MaterialCategory> categories,
  }) = _Error;
}
