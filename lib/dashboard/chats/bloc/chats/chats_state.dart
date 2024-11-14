part of 'chats_bloc.dart';

@freezed
class ChatsState with _$ChatsState {
  const factory ChatsState.initial({
    @Default([]) List<Chat> chats,
  }) = Initial;
  const factory ChatsState.loading({
    @Default([]) List<Chat> chats,
  }) = Loading;
  const factory ChatsState.loaded({
    @Default([]) List<Chat> chats,
  }) = Loaded;
  const factory ChatsState.error({
    @Default([]) List<Chat> chats,
    required String message,
  }) = Error;
}
