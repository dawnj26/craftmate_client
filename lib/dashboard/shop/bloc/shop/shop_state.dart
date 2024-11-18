part of 'shop_bloc.dart';

@freezed
class ShopState with _$ShopState {
  const factory ShopState.initial({
    @Default([]) List<Product> products,
  }) = Initial;

  const factory ShopState.loading({
    @Default([]) List<Product> products,
  }) = Loading;

  const factory ShopState.loaded({
    required List<Product> products,
  }) = Loaded;

  const factory ShopState.error({
    required String message,
    @Default([]) List<Product> products,
  }) = Error;
}
