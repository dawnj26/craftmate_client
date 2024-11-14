part of 'chat_bloc.dart';

@freezed
class ChatEvent with _$ChatEvent {
  const factory ChatEvent.started() = _Started;
  const factory ChatEvent.messagesChanged(List<Message> messages) =
      _MessagesChanged;
  const factory ChatEvent.messageSent(Message message) = _MessageSent;
}