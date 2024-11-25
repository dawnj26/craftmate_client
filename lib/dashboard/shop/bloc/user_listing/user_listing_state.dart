part of 'user_listing_bloc.dart';

@freezed
class UserListingState with _$UserListingState {
  const factory UserListingState.initial({
    @Default([]) List<QueryProduct> query,
  }) = Initial;

  const factory UserListingState.loading({
    @Default([]) List<QueryProduct> query,
  }) = Loading;

  const factory UserListingState.loaded({
    @Default([]) List<QueryProduct> query,
  }) = Loaded;

  const factory UserListingState.error({
    required String message,
    @Default([]) List<QueryProduct> query,
  }) = Error;
}
