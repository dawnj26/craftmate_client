part of 'user_listing_bloc.dart';

@freezed
class UserListingEvent with _$UserListingEvent {
  const factory UserListingEvent.started(int userId) = _Started;
  const factory UserListingEvent.categorySelected(ProjectCategory category) =
      _CategorySelected;
}
