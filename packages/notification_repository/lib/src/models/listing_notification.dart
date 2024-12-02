import 'package:freezed_annotation/freezed_annotation.dart';

part 'listing_notification.freezed.dart';
part 'listing_notification.g.dart';

@freezed
class ListingNotification with _$ListingNotification {
  const factory ListingNotification({
    @Default(-1) int senderId,
    @Default('') String listingId,
  }) = _ListingNotification;

  factory ListingNotification.fromJson(Map<String, dynamic> json) =>
      _$ListingNotificationFromJson(json);
}
