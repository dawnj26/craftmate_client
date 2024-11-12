part of 'chat_bloc.dart';

@freezed
class ChatState with _$ChatState {
  const factory ChatState.initial({
    @Default([]) List<Message> messages,
  }) = Initial;
  const factory ChatState.loading({
    @Default([]) List<Message> messages,
  }) = Loading;
  const factory ChatState.loaded({
    @Default([]) List<Message> messages,
  }) = Loaded;
  const factory ChatState.error({
    @Default([]) List<Message> messages,
    required String message,
  }) = Error;
}
