part of 'view_listing_bloc.dart';

@freezed
class ViewListingEvent with _$ViewListingEvent {
  const factory ViewListingEvent.started(String id) = _Started;
}
