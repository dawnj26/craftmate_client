// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessageImpl _$$MessageImplFromJson(Map<String, dynamic> json) =>
    _$MessageImpl(
      uuid: json['uuid'] as String? ?? '',
      message: json['message'] as String? ?? '',
      senderId: (json['senderId'] as num?)?.toInt() ?? -1,
      receiverId: (json['receiverId'] as num?)?.toInt() ?? -1,
      type: $enumDecodeNullable(_$MessageTypeEnumMap, json['type']) ??
          MessageType.text,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      senderReadAt: json['senderReadAt'] == null
          ? null
          : DateTime.parse(json['senderReadAt'] as String),
      receiverReadAt: json['receiverReadAt'] == null
          ? null
          : DateTime.parse(json['receiverReadAt'] as String),
    );

Map<String, dynamic> _$$MessageImplToJson(_$MessageImpl instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'message': instance.message,
      'senderId': instance.senderId,
      'receiverId': instance.receiverId,
      'type': _$MessageTypeEnumMap[instance.type]!,
      'createdAt': instance.createdAt?.toIso8601String(),
      'senderReadAt': instance.senderReadAt?.toIso8601String(),
      'receiverReadAt': instance.receiverReadAt?.toIso8601String(),
    };

const _$MessageTypeEnumMap = {
  MessageType.text: 'text',
  MessageType.image: 'image',
  MessageType.video: 'video',
  MessageType.audio: 'audio',
  MessageType.file: 'file',
};
