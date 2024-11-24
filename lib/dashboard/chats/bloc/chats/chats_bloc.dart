import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:chat_repository/chat_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chats_event.dart';
part 'chats_state.dart';
part 'chats_bloc.freezed.dart';

class ChatsBloc extends Bloc<ChatsEvent, ChatsState> {
  ChatsBloc({
    required ChatRepository chatRepository,
    required int userId,
    String? listingId,
  })  : _chatRepository = chatRepository,
        super(const Initial()) {
    _chatsSubscription =
        _chatRepository.chats(userId, listingId: listingId).listen((chats) {
      add(ChatsEvent.chatsReceived(chats));
    });

    on<_ChatsReceived>(_onChatsReceived);
  }

  final ChatRepository _chatRepository;
  late final StreamSubscription<List<Chat>> _chatsSubscription;

  void _onChatsReceived(
    _ChatsReceived event,
    Emitter<ChatsState> emit,
  ) {
    emit(
      ChatsState.loaded(
        chats: event.chats,
      ),
    );
  }

  @override
  Future<void> close() {
    // TODO: implement close
    _chatsSubscription.cancel();
    return super.close();
  }
}
