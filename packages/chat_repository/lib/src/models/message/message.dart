import 'package:freezed_annotation/freezed_annotation.dart';

part 'message.freezed.dart';
part 'message.g.dart';

@freezed
class Message with _$Message {
  const factory Message({
    @Default('') String uuid,
    @Default('') String message,
    @Default(-1) int senderId,
    @Default(-1) int receiverId,
    @Default(MessageType.text) MessageType type,
    DateTime? createdAt,
    DateTime? senderReadAt,
    DateTime? receiverReadAt,
  }) = _Message;

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);
}

enum MessageType {
  text,
  image,
  video,
}
