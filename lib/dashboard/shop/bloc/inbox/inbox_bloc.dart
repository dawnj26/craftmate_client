import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:chat_repository/chat_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:user_repository/user_repository.dart';

part 'inbox_event.dart';
part 'inbox_state.dart';
part 'inbox_bloc.freezed.dart';

class InboxBloc extends Bloc<InboxEvent, InboxState> {
  InboxBloc(
    this._chatRepository,
    this._userRepository,
    int userId,
  )   : _userId = userId,
        super(const Initial()) {
    on<_ChatsReceived>(_onChatsReceived);
    on<_Started>(_onStarted);
  }

  final int _userId;
  final ChatRepository _chatRepository;
  late final StreamSubscription<List<ListingChat>> _chatsSubscription;
  final UserRepository _userRepository;

  Future<void> _onStarted(
    _Started event,
    Emitter<InboxState> emit,
  ) async {
    final curUser = await _userRepository.getUserById(_userId);
    emit(Initial(curUser: curUser));
    _chatsSubscription = _chatRepository
        .listingChats(_userId)
        .listen((chats) => add(InboxEvent.chatsReceived(chats)));
  }

  void _onChatsReceived(
    _ChatsReceived event,
    Emitter<InboxState> emit,
  ) {
    emit(
      InboxState.loaded(
        listingChats: event.chats,
        curUser: state.curUser,
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
