part of 'add_material_bloc.dart';

@freezed
class AddMaterialState with _$AddMaterialState {
  const factory AddMaterialState.initial({
    @Default(MaterialName.pure()) MaterialName name,
    @Default(MaterialDescription.pure()) MaterialDescription description,
    @Default(MaterialCategoryDropdown.pure()) MaterialCategoryDropdown category,
    @Default(1) int quantity,
    @Default(<MaterialCategory>[]) List<MaterialCategory> categories,
    String? imagePath,
  }) = Initial;
  const factory AddMaterialState.loading({
    @Default(MaterialName.pure()) MaterialName name,
    @Default(MaterialDescription.pure()) MaterialDescription description,
    @Default(MaterialCategoryDropdown.pure()) MaterialCategoryDropdown category,
    @Default(1) int quantity,
    @Default(<MaterialCategory>[]) List<MaterialCategory> categories,
    String? imagePath,
  }) = Loading;
  const factory AddMaterialState.normal({
    @Default(MaterialName.pure()) MaterialName name,
    @Default(MaterialDescription.pure()) MaterialDescription description,
    @Default(MaterialCategoryDropdown.pure()) MaterialCategoryDropdown category,
    @Default(1) int quantity,
    @Default(<MaterialCategory>[]) List<MaterialCategory> categories,
    String? imagePath,
  }) = Normal;
  const factory AddMaterialState.uploading({
    @Default(MaterialName.pure()) MaterialName name,
    @Default(MaterialDescription.pure()) MaterialDescription description,
    @Default(MaterialCategoryDropdown.pure()) MaterialCategoryDropdown category,
    @Default(1) int quantity,
    @Default(<MaterialCategory>[]) List<MaterialCategory> categories,
    String? imagePath,
  }) = Uploading;
  const factory AddMaterialState.uploaded({
    @Default(MaterialName.pure()) MaterialName name,
    @Default(MaterialDescription.pure()) MaterialDescription description,
    @Default(MaterialCategoryDropdown.pure()) MaterialCategoryDropdown category,
    @Default(1) int quantity,
    @Default(<MaterialCategory>[]) List<MaterialCategory> categories,
    String? imagePath,
  }) = Uploaded;
  const factory AddMaterialState.success({
    @Default(MaterialName.pure()) MaterialName name,
    @Default(MaterialDescription.pure()) MaterialDescription description,
    @Default(MaterialCategoryDropdown.pure()) MaterialCategoryDropdown category,
    @Default(1) int quantity,
    @Default(<MaterialCategory>[]) List<MaterialCategory> categories,
    String? imagePath,
    @Default(0) int materialId,
  }) = Success;
  const factory AddMaterialState.error(
    String message, {
    @Default(MaterialName.pure()) MaterialName name,
    @Default(MaterialDescription.pure()) MaterialDescription description,
    @Default(MaterialCategoryDropdown.pure()) MaterialCategoryDropdown category,
    @Default(1) int quantity,
    @Default(<MaterialCategory>[]) List<MaterialCategory> categories,
    String? imagePath,
  }) = Error;
}
