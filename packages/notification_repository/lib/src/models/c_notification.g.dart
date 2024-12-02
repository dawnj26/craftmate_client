// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'c_notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CNotificationImpl _$$CNotificationImplFromJson(Map<String, dynamic> json) =>
    _$CNotificationImpl(
      id: json['id'] as String? ?? '',
      title: json['title'] as String? ?? '',
      body: json['body'] as String? ?? '',
      type: json['type'] as String? ?? '',
      data: json['data'] as Map<String, dynamic>,
      read: json['read'] as bool? ?? false,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$CNotificationImplToJson(_$CNotificationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'body': instance.body,
      'type': instance.type,
      'data': instance.data,
      'read': instance.read,
      'createdAt': instance.createdAt.toIso8601String(),
    };
