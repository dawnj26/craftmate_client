import 'package:freezed_annotation/freezed_annotation.dart';

part 'c_notification.freezed.dart';
part 'c_notification.g.dart';

@freezed
class CNotification with _$CNotification {
  const factory CNotification({
    @Default('') String id,
    @Default('') String title,
    @Default('') String body,
    @Default('') String type,
    required Map<String, dynamic> data,
    @Default(false) bool read,
    required DateTime createdAt,
  }) = _CNotification;

  factory CNotification.fromJson(Map<String, dynamic> json) =>
      _$CNotificationFromJson(json);
}
