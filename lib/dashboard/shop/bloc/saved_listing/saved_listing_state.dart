part of 'saved_listing_bloc.dart';

@freezed
class SavedListingState with _$SavedListingState {
  const factory SavedListingState.initial({
    @Default([]) List<QueryProduct> query,
    @Default([]) List<QueryProduct> filteredQuery,
    @Default([]) List<ProjectCategory> categories,
    @Default(ProjectCategory()) ProjectCategory selectedCategory,
  }) = Initial;

  const factory SavedListingState.loading({
    @Default([]) List<QueryProduct> query,
    @Default([]) List<QueryProduct> filteredQuery,
    @Default([]) List<ProjectCategory> categories,
    @Default(ProjectCategory()) ProjectCategory selectedCategory,
  }) = Loading;

  const factory SavedListingState.loaded({
    required List<QueryProduct> query,
    required List<QueryProduct> filteredQuery,
    required List<ProjectCategory> categories,
    required ProjectCategory selectedCategory,
  }) = Loaded;

  const factory SavedListingState.error({
    required String message,
    @Default([]) List<QueryProduct> query,
    @Default([]) List<QueryProduct> filteredQuery,
    @Default([]) List<ProjectCategory> categories,
    @Default(ProjectCategory()) ProjectCategory selectedCategory,
  }) = Error;
}
