import 'package:freezed_annotation/freezed_annotation.dart';

part 'template_notification.freezed.dart';
part 'template_notification.g.dart';

@freezed
class TemplateNotification with _$TemplateNotification {
  const factory TemplateNotification() = _TemplateNotification;

  factory TemplateNotification.fromJson(Map<String, dynamic> json) =>
      _$TemplateNotificationFromJson(json);
}
