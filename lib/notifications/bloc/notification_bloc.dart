import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:craftmate_client/globals.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:notification_repository/notification_repository.dart';
import 'package:user_repository/user_repository.dart';

part 'notification_event.dart';
part 'notification_state.dart';
part 'notification_bloc.freezed.dart';

class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  NotificationBloc(this._notificationRepository, this._curUser)
      : super(const Initial()) {
    on<_Started>(_onStarted);
    on<_FetchNotifications>(_onFetchNotifications);
    on<_NotificationChanged>(_onNotificationChanged);
    on<_MarkNotificationAsRead>(_onMarkNotificationAsRead);
    on<_FilterChanged>(_onFilterChanged);
  }

  final NotificationRepository _notificationRepository;
  final User _curUser;
  StreamSubscription<List<CNotification>>? _notificationSubscription;
  bool _initialNotificationsShown = false; // Add this flag

  Future<void> _onFilterChanged(
    _FilterChanged event,
    Emitter<NotificationState> emit,
  ) async {
    if (_notificationSubscription != null) {
      await _notificationSubscription?.cancel();
      _notificationSubscription = null;
    }

    _notificationSubscription = _notificationRepository
        .getNotifications(_curUser.id, filter: event.filter)
        .listen(
      (notifications) {
        add(NotificationEvent.notificationChanged(notifications));
      },
    );
    emit(Loaded(notifications: state.notifications, filter: event.filter));
  }

  Future<void> _onMarkNotificationAsRead(
    _MarkNotificationAsRead event,
    Emitter<NotificationState> emit,
  ) async {
    await _notificationRepository.markNotificationAsRead(
      _curUser.id,
      event.notificationId,
    );
  }

  @override
  Future<void> close() {
    // TODO: implement close
    _notificationSubscription?.cancel();
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

    if (!_initialNotificationsShown) {
      // Show all unread notifications on first load
      _showMultipleNotifications(
        event.notifications.where((n) => !n.read).toList(),
      );
      _initialNotificationsShown = true;
    } else {
      // Show only new unread notifications
      final newUnreadNotifications = event.notifications
          .where((n) => !n.read)
          .take(1) // Only take the most recent unread notification
          .toList();

      if (newUnreadNotifications.isNotEmpty) {
        _showMultipleNotifications(newUnreadNotifications);
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

    _notificationSubscription =
        _notificationRepository.getNotifications(_curUser.id).listen(
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

  void _showMultipleNotifications(List<CNotification> notifications) {
    for (int i = 0; i < notifications.length; i++) {
      final notification = notifications[i];
      Future.delayed(Duration(milliseconds: 500 * i), () {
        _showLocalNotification(notification, i);
      });
    }
  }
}
