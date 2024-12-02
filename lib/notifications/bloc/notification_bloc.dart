import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:craftmate_client/globals.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:notification_repository/notification_repository.dart';

part 'notification_event.dart';
part 'notification_state.dart';
part 'notification_bloc.freezed.dart';

class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  NotificationBloc(this._notificationRepository) : super(const Initial()) {
    on<_Started>(_onStarted);
    on<_FetchNotifications>(_onFetchNotifications);
    on<_NotificationChanged>(_onNotificationChanged);
  }

  final NotificationRepository _notificationRepository;
  late final StreamSubscription<List<CNotification>> _notificationSubscription;

  @override
  Future<void> close() {
    // TODO: implement close
    _notificationSubscription.cancel();
    return super.close();
  }

  void _onNotificationChanged(
    _NotificationChanged event,
    Emitter<NotificationState> emit,
  ) {
    emit(
      Loaded(
        notifications: event.notifications,
        filter: state.filter,
        hasPermission: state.hasPermission,
      ),
    );

    for (int i = 0; i < event.notifications.length; i++) {
      final notification = event.notifications[i];
      if (!notification.read) {
        Future.delayed(const Duration(milliseconds: 500), () {
          _showLocalNotification(notification, i);
        });
      }
    }
  }

  Future<void> _onFetchNotifications(
    _FetchNotifications event,
    Emitter<NotificationState> emit,
  ) async {}

  Future<void> _onStarted(
    _Started event,
    Emitter<NotificationState> emit,
  ) async {
    final hasPermission = await flutterLocalNotificationsPlugin
            .resolvePlatformSpecificImplementation<
                AndroidFlutterLocalNotificationsPlugin>()
            ?.requestNotificationsPermission() ??
        false;

    emit(Initialized(hasPermission: hasPermission));
    logger.info('NotificationBloc: _onStarted: ${event.userId}');

    _notificationSubscription =
        _notificationRepository.getNotifications(event.userId).listen(
      (notifications) {
        add(NotificationEvent.notificationChanged(notifications));
      },
    );
  }

  void _showLocalNotification(CNotification notification, int id) {
    flutterLocalNotificationsPlugin.show(
      id,
      notification.title,
      notification.body,
      NotificationDetails(
        android: AndroidNotificationDetails(
          channel.id,
          channel.name,
          channelDescription: channel.description,
          importance: Importance.high,
          icon: '@mipmap/ic_launcher',
        ),
      ),
      payload: 'Open from Local Notification',
    );
  }
}
