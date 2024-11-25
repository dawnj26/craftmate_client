part of 'saved_listing_bloc.dart';

@freezed
class SavedListingState with _$SavedListingState {
  const factory SavedListingState.initial({
    @Default([]) List<QueryProduct> query,
  }) = Initial;

  const factory SavedListingState.loading({
    @Default([]) List<QueryProduct> query,
  }) = Loading;

  const factory SavedListingState.loaded({
    @Default([]) List<QueryProduct> query,
  }) = Loaded;

  const factory SavedListingState.error({
    required String message,
    @Default([]) List<QueryProduct> query,
  }) = Error;
}
