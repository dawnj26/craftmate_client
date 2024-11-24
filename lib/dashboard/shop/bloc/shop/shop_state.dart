part of 'shop_bloc.dart';

@freezed
class ShopState with _$ShopState {
  const factory ShopState.initial({
    @Default(<QueryProduct>[]) List<QueryProduct> products,
    @Default(<QueryProduct>[]) List<QueryProduct> nearbyProducts,
    @Default(Place()) Place currentLocation,
  }) = Initial;
  const factory ShopState.initializing({
    @Default(<QueryProduct>[]) List<QueryProduct> products,
    @Default(<QueryProduct>[]) List<QueryProduct> nearbyProducts,
    @Default(Place()) Place currentLocation,
  }) = Initializing;
  const factory ShopState.initialized({
    @Default(<QueryProduct>[]) List<QueryProduct> products,
    @Default(<QueryProduct>[]) List<QueryProduct> nearbyProducts,
    @Default(Place()) Place currentLocation,
  }) = Initialized;

  const factory ShopState.loading({
    @Default(<QueryProduct>[]) List<QueryProduct> products,
    @Default(<QueryProduct>[]) List<QueryProduct> nearbyProducts,
    @Default(Place()) Place currentLocation,
  }) = Loading;

  const factory ShopState.loaded({
    required List<QueryProduct> products,
    required List<QueryProduct> nearbyProducts,
    @Default(Place()) Place currentLocation,
  }) = Loaded;

  const factory ShopState.error({
    required String message,
    @Default(<QueryProduct>[]) List<QueryProduct> products,
    @Default(<QueryProduct>[]) List<QueryProduct> nearbyProducts,
    @Default(Place()) Place currentLocation,
  }) = Error;
}
