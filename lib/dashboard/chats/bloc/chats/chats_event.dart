part of 'chats_bloc.dart';

@freezed
class ChatsEvent with _$ChatsEvent {
  const factory ChatsEvent.started() = _Started;
  const factory ChatsEvent.chatsReceived(List<Chat> chats) = _ChatsReceived;
}
