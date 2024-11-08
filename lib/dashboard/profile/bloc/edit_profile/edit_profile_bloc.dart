import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:user_repository/user_repository.dart';

part 'edit_profile_event.dart';
part 'edit_profile_state.dart';
part 'edit_profile_bloc.freezed.dart';

class EditProfileBloc extends Bloc<EditProfileEvent, EditProfileState> {
  EditProfileBloc({
    required UserRepository userRepository,
  })  : _userRepository = userRepository,
        super(const Initial()) {
    on<_UserChanged>(_onUserChanged);
    on<_PhotoUploaded>(_onPhotoUploaded);
  }

  final UserRepository _userRepository;

  Future<void> _onPhotoUploaded(
    _PhotoUploaded event,
    Emitter<EditProfileState> emit,
  ) async {
    emit(Uploading(user: state.user));

    try {
      final user = await _userRepository.uploadProfilePicture(event.filePath);
      emit(Uploaded(user: user));
    } on UserException catch (e) {
      emit(Error(message: e.message, user: state.user));
    }
  }

  void _onUserChanged(
    _UserChanged event,
    Emitter<EditProfileState> emit,
  ) {
    emit(Loaded(user: event.user));
  }
}
