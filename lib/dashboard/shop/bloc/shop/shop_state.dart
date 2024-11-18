part of 'shop_bloc.dart';

@freezed
class ShopState with _$ShopState {
  const factory ShopState.initial({
    @Default(<QueryProduct>[]) List<QueryProduct> products,
  }) = Initial;

  const factory ShopState.loading({
    @Default(<QueryProduct>[]) List<QueryProduct> products,
  }) = Loading;

  const factory ShopState.loaded({
    required List<QueryProduct> products,
  }) = Loaded;

  const factory ShopState.error({
    required String message,
    @Default(<QueryProduct>[]) List<QueryProduct> products,
  }) = Error;
}
