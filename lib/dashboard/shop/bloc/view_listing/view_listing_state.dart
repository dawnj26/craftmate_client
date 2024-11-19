part of 'view_listing_bloc.dart';

@freezed
class ViewListingState with _$ViewListingState {
  const factory ViewListingState.initial({
    @Default(QueryProduct.empty()) QueryProduct query,
    @Default(User()) User seller,
  }) = Initial;

  const factory ViewListingState.loading({
    @Default(QueryProduct.empty()) QueryProduct query,
    @Default(User()) User seller,
  }) = Loading;

  const factory ViewListingState.loaded({
    required QueryProduct query,
    required User seller,
  }) = Loaded;

  const factory ViewListingState.error({
    required String message,
    @Default(QueryProduct.empty()) QueryProduct query,
    @Default(User()) User seller,
  }) = Error;
}
