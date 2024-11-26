part of 'user_listing_bloc.dart';

@freezed
class UserListingState with _$UserListingState {
  const factory UserListingState.initial({
    @Default([]) List<QueryProduct> query,
    @Default([]) List<QueryProduct> filteredQuery,
    @Default([]) List<ProjectCategory> categories,
    @Default(ProjectCategory()) ProjectCategory selectedCategory,
  }) = Initial;

  const factory UserListingState.loading({
    @Default([]) List<QueryProduct> query,
    @Default([]) List<QueryProduct> filteredQuery,
    @Default([]) List<ProjectCategory> categories,
    @Default(ProjectCategory()) ProjectCategory selectedCategory,
  }) = Loading;

  const factory UserListingState.loaded({
    required List<QueryProduct> query,
    required List<QueryProduct> filteredQuery,
    required List<ProjectCategory> categories,
    required ProjectCategory selectedCategory,
  }) = Loaded;

  const factory UserListingState.error({
    required String message,
    @Default([]) List<QueryProduct> query,
    @Default([]) List<QueryProduct> filteredQuery,
    @Default([]) List<ProjectCategory> categories,
    @Default(ProjectCategory()) ProjectCategory selectedCategory,
  }) = Error;
}
