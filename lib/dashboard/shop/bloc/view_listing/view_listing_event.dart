part of 'view_listing_bloc.dart';

@freezed
class ViewListingEvent with _$ViewListingEvent {
  const factory ViewListingEvent.started(String id) = _Started;
  const factory ViewListingEvent.favoriteToggled() = _FavoriteToggled;
  const factory ViewListingEvent.messageChanged(String message) =
      _MessageChanged;
  const factory ViewListingEvent.messageSent() = _MessageSent;
}
