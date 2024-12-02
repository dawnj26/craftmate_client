import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_notification.freezed.dart';
part 'message_notification.g.dart';

@freezed
class MessageNotification with _$MessageNotification {
  const factory MessageNotification() = _MessageNotification;

  factory MessageNotification.fromJson(Map<String, dynamic> json) =>
      _$MessageNotificationFromJson(json);
}
