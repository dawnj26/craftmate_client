part of 'notification_bloc.dart';

@freezed
class NotificationState with _$NotificationState {
  const factory NotificationState.initial({
    @Default([]) List<CNotification> notifications,
    @Default(NotificationDateFilter.today) NotificationDateFilter filter,
    @Default(false) bool hasPermission,
  }) = Initial;
  const factory NotificationState.initialized({
    @Default([]) List<CNotification> notifications,
    @Default(NotificationDateFilter.today) NotificationDateFilter filter,
    required bool hasPermission,
  }) = Initialized;

  const factory NotificationState.loading({
    @Default([]) List<CNotification> notifications,
    @Default(NotificationDateFilter.today) NotificationDateFilter filter,
    @Default(false) bool hasPermission,
  }) = Loading;

  const factory NotificationState.loaded({
    required List<CNotification> notifications,
    @Default(NotificationDateFilter.today) NotificationDateFilter filter,
    @Default(false) bool hasPermission,
  }) = Loaded;

  const factory NotificationState.error({
    required String message,
    @Default([]) List<CNotification> notifications,
    @Default(NotificationDateFilter.today) NotificationDateFilter filter,
    @Default(false) bool hasPermission,
  }) = Error;
}
