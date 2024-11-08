import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:user_repository/user_repository.dart';

part 'user_profile_event.dart';
part 'user_profile_state.dart';
part 'user_profile_bloc.freezed.dart';

class UserProfileBloc extends Bloc<UserProfileEvent, UserProfileState> {
  UserProfileBloc({
    required UserRepository userRepository,
  })  : _userRepository = userRepository,
        super(const Initial()) {
    on<_LoadedProfile>(_onLoadedProfile);
  }

  final UserRepository _userRepository;

  Future<void> _onLoadedProfile(
    _LoadedProfile event,
    Emitter<UserProfileState> emit,
  ) async {
    emit(const Loading());
    try {
      final user = await _userRepository.getUserByToken(true);
      emit(Loaded(user: user));
    } on UserException catch (e) {
      emit(Error(message: e.message));
    }
  }
}
