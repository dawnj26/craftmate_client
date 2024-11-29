import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:chat_repository/chat_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_event.dart';
part 'chat_state.dart';
part 'chat_bloc.freezed.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  ChatBloc({
    required ChatRepository chatRepository,
    String? listingId,
  })  : _listingId = listingId,
        _chatRepository = chatRepository,
        super(const Initial()) {
    on<_MessagesChanged>(_onMessagesChanged);
    on<_MessageSent>(_onMessageSent);
    on<_Started>(_onStarted);
  }

  final ChatRepository _chatRepository;
  StreamSubscription<List<Message>>? _messagesSubscription;
  final String? _listingId;
  late bool _hasMessages;

  Future<void> _onStarted(
    _Started event,
    Emitter<ChatState> emit,
  ) async {
    emit(const ChatState.loading());

    _hasMessages = await _chatRepository
        .hasMessages(event.senderId, event.receiverId, listingId: _listingId);

    if (!_hasMessages) {
      emit(const ChatState.loaded());
      return;
    }

    _messagesSubscription = _chatRepository
        .messages(event.senderId, event.receiverId, listingId: _listingId)
        .listen(
          (messages) => add(_MessagesChanged(messages)),
        );
  }

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
        listingId: _listingId,
      );
      if (!_hasMessages) {
        _messagesSubscription = _chatRepository
            .messages(
              event.message.senderId,
              event.message.receiverId,
              listingId: _listingId,
            )
            .listen(
              (messages) => add(_MessagesChanged(messages)),
            );
        _hasMessages = true;
      }
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
    _messagesSubscription?.cancel();
    return super.close();
  }
}
