part of 'shop_result_bloc.dart';

@freezed
class ShopResultState with _$ShopResultState {
  const factory ShopResultState.initial({
    @Default(<QueryProduct>[]) List<QueryProduct> products,
    @Default(<QueryProduct>[]) List<QueryProduct> nearbyProducts,
    @Default(<QueryProduct>[]) List<QueryProduct> filteredProducts,
    @Default(<ProjectCategory>[]) List<ProjectCategory> categories,
    @Default(Place()) Place currentLocation,
    @Default(ProjectCategory(name: 'All')) ProjectCategory selectedCategory,
    @Default(100.0) double radius,
  }) = Initial;

  const factory ShopResultState.loading({
    @Default(<QueryProduct>[]) List<QueryProduct> products,
    @Default(<QueryProduct>[]) List<QueryProduct> nearbyProducts,
    @Default(<QueryProduct>[]) List<QueryProduct> filteredProducts,
    @Default(<ProjectCategory>[]) List<ProjectCategory> categories,
    @Default(Place()) Place currentLocation,
    @Default(ProjectCategory(name: 'All')) ProjectCategory selectedCategory,
    @Default(100.0) double radius,
  }) = Loading;

  const factory ShopResultState.loaded({
    @Default(<QueryProduct>[]) List<QueryProduct> products,
    @Default(<QueryProduct>[]) List<QueryProduct> nearbyProducts,
    @Default(<QueryProduct>[]) List<QueryProduct> filteredProducts,
    @Default(<ProjectCategory>[]) List<ProjectCategory> categories,
    @Default(Place()) Place currentLocation,
    @Default(ProjectCategory(name: 'All')) ProjectCategory selectedCategory,
    @Default(100.0) double radius,
  }) = Loaded;

  const factory ShopResultState.error({
    @Default(<QueryProduct>[]) List<QueryProduct> products,
    @Default(<QueryProduct>[]) List<QueryProduct> nearbyProducts,
    @Default(<QueryProduct>[]) List<QueryProduct> filteredProducts,
    @Default(<ProjectCategory>[]) List<ProjectCategory> categories,
    @Default(Place()) Place currentLocation,
    @Default(ProjectCategory(name: 'All')) ProjectCategory selectedCategory,
    @Default(100.0) double radius,
    required String message,
  }) = Error;
}
