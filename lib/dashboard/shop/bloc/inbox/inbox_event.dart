part of 'inbox_bloc.dart';

@freezed
class InboxEvent with _$InboxEvent {
  const factory InboxEvent.started() = _Started;
  const factory InboxEvent.chatsReceived(List<ListingChat> chats) =
      _ChatsReceived;
}
