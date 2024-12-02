part of 'notif_click_bloc.dart';

@freezed
class NotifClickEvent with _$NotifClickEvent {
  const factory NotifClickEvent.notificationClicked({
    required CNotification notification,
    required int userId,
  }) = _NotificationClicked;
}
