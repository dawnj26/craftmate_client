import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:user_repository/user_repository.dart';

part 'view_profile_event.dart';
part 'view_profile_state.dart';
part 'view_profile_bloc.freezed.dart';

class ViewProfileBloc extends Bloc<ViewProfileEvent, ViewProfileState> {
  ViewProfileBloc({
    required UserRepository userRepository,
  })  : _userRepository = userRepository,
        super(const Initial()) {
    on<_Started>(_onStarted);
    on<_FollowToggled>(_onFollowToggled);
  }

  final UserRepository _userRepository;

  Future<void> _onFollowToggled(
    _FollowToggled event,
    Emitter<ViewProfileState> emit,
  ) async {
    try {
      final user = await _userRepository.toggleFollow(state.user.id);
      emit(Loaded(user: user));
    } on UserException catch (e) {
      emit(Error(message: e.message, user: state.user));
    }
  }

  Future<void> _onStarted(
    _Started event,
    Emitter<ViewProfileState> emit,
  ) async {
    emit(const Loading());
    try {
      final user = await _userRepository.getUserById(event.id);
      emit(Loaded(user: user));
    } on UserException catch (e) {
      emit(Error(message: e.message));
    }
  }
}
