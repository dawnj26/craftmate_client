part of 'notification_bloc.dart';

@freezed
class NotificationEvent with _$NotificationEvent {
  const factory NotificationEvent.started() = _Started;
  const factory NotificationEvent.fetchNotifications() = _FetchNotifications;
  const factory NotificationEvent.notificationChanged(
    List<CNotification> notifications,
  ) = _NotificationChanged;
  const factory NotificationEvent.markNotificationAsRead(
    String notificationId,
  ) = _MarkNotificationAsRead;
  const factory NotificationEvent.filterChanged(NotificationDateFilter filter) =
      _FilterChanged;
}
