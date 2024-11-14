import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:chat_repository/chat_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:user_repository/user_repository.dart';

part 'chat_event.dart';
part 'chat_state.dart';
part 'chat_bloc.freezed.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  ChatBloc({
    required ChatRepository chatRepository,
    required User sender,
    required User receiver,
  })  : _chatRepository = chatRepository,
        super(const Initial()) {
    _messagesSubscription =
        _chatRepository.messages(sender.id, receiver.id).listen(
              (messages) => add(_MessagesChanged(messages)),
            );

    on<_MessagesChanged>(_onMessagesChanged);
    on<_MessageSent>(_onMessageSent);
  }

  final ChatRepository _chatRepository;
  late final StreamSubscription<List<Message>> _messagesSubscription;

  Future<void> _onMessageSent(
    _MessageSent event,
    Emitter<ChatState> emit,
  ) async {
    emit(
      ChatState.sending(messages: [event.message, ...state.messages]),
    );

    try {
      await _chatRepository.sendMessage(
        event.message,
      );
    } catch (e) {
      emit(
        ChatState.error(
          message: 'An error occurred',
          messages: [...state.messages],
        ),
      );
    }
  }

  void _onMessagesChanged(
    _MessagesChanged event,
    Emitter<ChatState> emit,
  ) {
    emit(
      ChatState.loaded(messages: event.messages),
    );
  }

  @override
  Future<void> close() {
    // TODO: implement close
    _messagesSubscription.cancel();
    return super.close();
  }
}
