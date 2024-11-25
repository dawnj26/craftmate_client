part of 'shop_categories_bloc.dart';

@freezed
class ShopCategoriesState with _$ShopCategoriesState {
  const factory ShopCategoriesState.initial({
    @Default([]) List<ProjectCategory> categories,
  }) = Initial;

  const factory ShopCategoriesState.loading({
    @Default([]) List<ProjectCategory> categories,
  }) = Loading;

  const factory ShopCategoriesState.loaded({
    required List<ProjectCategory> categories,
  }) = Loaded;

  const factory ShopCategoriesState.error({
    required String message,
    @Default([]) List<ProjectCategory> categories,
  }) = Error;
}
