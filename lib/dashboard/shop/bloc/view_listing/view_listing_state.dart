part of 'view_listing_bloc.dart';

@freezed
class ViewListingState with _$ViewListingState {
  const factory ViewListingState.initial({
    @Default(QueryProduct.empty()) QueryProduct product,
  }) = Initial;

  const factory ViewListingState.loading({
    @Default(QueryProduct.empty()) QueryProduct product,
  }) = Loading;

  const factory ViewListingState.loaded({
    required QueryProduct product,
  }) = Loaded;

  const factory ViewListingState.error({
    required String message,
    @Default(QueryProduct.empty()) QueryProduct product,
  }) = Error;
}
