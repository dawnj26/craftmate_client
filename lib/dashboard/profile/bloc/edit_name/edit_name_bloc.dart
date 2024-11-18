import 'package:bloc/bloc.dart';
import 'package:craftmate_client/helpers/stream_helper.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:user_repository/user_repository.dart';

part 'edit_name_event.dart';
part 'edit_name_state.dart';
part 'edit_name_bloc.freezed.dart';

class EditNameBloc extends Bloc<EditNameEvent, EditNameState> {
  EditNameBloc({
    required UserRepository userRepository,
    required String name,
  })  : _userRepository = userRepository,
        _name = name,
        super(const Initial()) {
    on<_NameChanged>(
      _onNameChanged,
      transformer: debounce(const Duration(milliseconds: 300)),
    );
    on<_NameSaved>(_onNameSaved);
  }

  final UserRepository _userRepository;
  final String _name;

  void _onNameChanged(_NameChanged event, Emitter<EditNameState> emit) {
    emit(Initial(name: event.name, isNameChanged: event.name != _name));
  }

  Future<void> _onNameSaved(
    _NameSaved event,
    Emitter<EditNameState> emit,
  ) async {
    emit(
      Saving(
        name: state.name,
        isNameChanged: state.isNameChanged,
      ),
    );

    try {
      final user = await _userRepository.updateUserName(state.name);
      emit(Saved(name: user.name, user: user));
    } on UserException catch (e) {
      emit(
        Error(
          message: e.message,
          name: state.name,
          isNameChanged: state.isNameChanged,
        ),
      );
    }
  }
}
