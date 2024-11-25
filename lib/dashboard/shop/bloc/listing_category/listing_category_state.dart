part of 'listing_category_bloc.dart';

@freezed
class ListingCategoryState with _$ListingCategoryState {
  const factory ListingCategoryState.initial({
    @Default([]) List<QueryProduct> query,
  }) = Initial;
  const factory ListingCategoryState.loading({
    @Default([]) List<QueryProduct> query,
  }) = Loading;
  const factory ListingCategoryState.loaded({
    @Default([]) List<QueryProduct> query,
  }) = Loaded;
  const factory ListingCategoryState.error({
    required String message,
    @Default([]) List<QueryProduct> query,
  }) = Error;
}
