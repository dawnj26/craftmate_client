part of 'saved_listing_bloc.dart';

@freezed
class SavedListingEvent with _$SavedListingEvent {
  const factory SavedListingEvent.started(int userId) = _Started;
  const factory SavedListingEvent.categorySelected(ProjectCategory category) =
      _CategorySelected;
}
