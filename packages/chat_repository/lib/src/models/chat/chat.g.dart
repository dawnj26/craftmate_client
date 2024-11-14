// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatImpl _$$ChatImplFromJson(Map<String, dynamic> json) => _$ChatImpl(
      sender: json['sender'] == null
          ? const User()
          : User.fromJson(json['sender'] as Map<String, dynamic>),
      latestMessage: json['latestMessage'] == null
          ? const Message()
          : Message.fromJson(json['latestMessage'] as Map<String, dynamic>),
      readAt: json['readAt'] == null
          ? null
          : DateTime.parse(json['readAt'] as String),
    );

Map<String, dynamic> _$$ChatImplToJson(_$ChatImpl instance) =>
    <String, dynamic>{
      'sender': instance.sender,
      'latestMessage': instance.latestMessage,
      'readAt': instance.readAt?.toIso8601String(),
    };
