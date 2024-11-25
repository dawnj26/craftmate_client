import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:chat_repository/chat_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'inbox_event.dart';
part 'inbox_state.dart';
part 'inbox_bloc.freezed.dart';

class InboxBloc extends Bloc<InboxEvent, InboxState> {
  InboxBloc(
    this._chatRepository,
    int userId,
  ) : super(const Initial()) {
    _chatsSubscription = _chatRepository.listingChats(userId).listen((chats) {
      add(InboxEvent.chatsReceived(chats));
    });

    on<_ChatsReceived>(_onChatsReceived);
  }

  final ChatRepository _chatRepository;
  late final StreamSubscription<List<ListingChat>> _chatsSubscription;

  void _onChatsReceived(
    _ChatsReceived event,
    Emitter<InboxState> emit,
  ) {
    emit(
      InboxState.loaded(
        listingChats: event.chats,
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
