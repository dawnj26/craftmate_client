import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:config_repository/config_repository.dart';
import 'package:notification_repository/notification_repository.dart';

abstract class INotificationRepository {
  Future<void> saveNotification(
      int userId, String title, String body, Map<String, dynamic> data);

  Stream<List<CNotification>> getNotifications(
    int userId, {
    NotificationDateFilter filter = NotificationDateFilter.all,
  });

  Future<void> markNotificationAsRead(int userId, String notificationId);
  Future<void> markAllNotificationsAsRead(int userId);
}

class NotificationRepository implements INotificationRepository {
  final ConfigRepository _config;

  NotificationRepository(this._config);

  @override
  Future<void> saveNotification(
    int userId,
    String title,
    String body,
    Map<String, dynamic> data,
  ) async {
    try {
      _config.logger.info('Saving notification');
      await _config.db
          .collection('users')
          .doc(userId.toString())
          .collection('notifications')
          .add({
        'title': title,
        'body': body,
        'data': data,
        'created_at': FieldValue.serverTimestamp(),
        'read': false,
      });
    } catch (e) {
      _config.logger.error('Failed to save notification', e);
      throw NotificationException(message: 'Failed to save notification');
    }
  }

  @override
  Stream<List<CNotification>> getNotifications(
    int userId, {
    NotificationDateFilter filter = NotificationDateFilter.today,
  }) {
    try {
      var query = _config.db
          .collection('users')
          .doc(userId.toString())
          .collection('notifications')
          .orderBy('created_at', descending: true);

      if (filter.startDate != null) {
        query = query.where('created_at',
            isGreaterThanOrEqualTo: Timestamp.fromDate(filter.startDate!));
      }

      return query.snapshots().map((snapshot) {
        return snapshot.docs.map((doc) {
          final data = doc.data();
          return CNotification(
            id: doc.id,
            title: data['title'] ?? '',
            body: data['body'] ?? '',
            type: data['data']['type'] ?? '',
            data: data['data'] as Map<String, dynamic>? ?? {},
            read: data['read'] ?? false,
            createdAt: (data['created_at'] as Timestamp).toDate(),
          );
        }).toList();
      });
    } catch (e) {
      _config.logger.error('Failed to get notifications', e);
      return Stream.value([]);
    }
  }

  @override
  Future<void> markNotificationAsRead(int userId, String notificationId) async {
    try {
      await _config.db
          .collection('users')
          .doc(userId.toString())
          .collection('notifications')
          .doc(notificationId)
          .update({'read': true});
    } catch (e) {
      _config.logger.error('Failed to mark notification as read', e);
      throw NotificationException(
          message: 'Failed to mark notification as read');
    }
  }

  @override
  Future<void> markAllNotificationsAsRead(int userId) async {
    try {
      final notifications = await _config.db
          .collection('users')
          .doc(userId.toString())
          .collection('notifications')
          .get();

      final batch = _config.db.batch();
      for (var doc in notifications.docs) {
        batch.update(doc.reference, {'read': true});
      }
      await batch.commit();
    } catch (e) {
      _config.logger.error('Failed to mark all notifications as read', e);
      throw NotificationException(
          message: 'Failed to mark all notifications as read');
    }
  }
}
