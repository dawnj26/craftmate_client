part of 'user_material_bloc.dart';

@freezed
class UserMaterialState with _$UserMaterialState {
  const factory UserMaterialState.initial({
    @Default([]) List<Material> materials,
    @Default([]) List<MaterialCategory> categories,
    @Default(MaterialSort.lastModified) MaterialSort sort,
    @Default(SortOrder.desc) SortOrder order,
    int? categoryId,
  }) = Initial;
  const factory UserMaterialState.loading({
    @Default([]) List<Material> materials,
    @Default([]) List<MaterialCategory> categories,
    @Default(MaterialSort.lastModified) MaterialSort sort,
    @Default(SortOrder.desc) SortOrder order,
    int? categoryId,
  }) = Loading;
  const factory UserMaterialState.loaded({
    @Default([]) List<Material> materials,
    @Default([]) List<MaterialCategory> categories,
    @Default(MaterialSort.lastModified) MaterialSort sort,
    @Default(SortOrder.desc) SortOrder order,
    int? categoryId,
  }) = Loaded;
  const factory UserMaterialState.error({
    @Default([]) List<Material> materials,
    @Default([]) List<MaterialCategory> categories,
    @Default(MaterialSort.lastModified) MaterialSort sort,
    @Default(SortOrder.desc) SortOrder order,
    int? categoryId,
    required String message,
  }) = Error;
  const factory UserMaterialState.deleting({
    @Default([]) List<Material> materials,
    @Default([]) List<MaterialCategory> categories,
    @Default(MaterialSort.lastModified) MaterialSort sort,
    @Default(SortOrder.desc) SortOrder order,
    int? categoryId,
  }) = Deleting;
  const factory UserMaterialState.deleted({
    @Default([]) List<Material> materials,
    @Default([]) List<MaterialCategory> categories,
    @Default(MaterialSort.lastModified) MaterialSort sort,
    @Default(SortOrder.desc) SortOrder order,
    int? categoryId,
  }) = Deleted;
}
