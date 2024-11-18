import 'package:bloc/bloc.dart';
import 'package:craftmate_client/helpers/stream_helper.dart';
import 'package:email_validator/email_validator.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:user_repository/user_repository.dart';

part 'edit_email_event.dart';
part 'edit_email_state.dart';
part 'edit_email_bloc.freezed.dart';

class EditEmailBloc extends Bloc<EditEmailEvent, EditEmailState> {
  EditEmailBloc({
    required UserRepository userRepo,
    required String email,
  })  : _userRepo = userRepo,
        _email = email,
        super(
          Initial(email: email),
        ) {
    on<_EmailChanged>(
      _onEmailChanged,
      transformer: debounce(const Duration(milliseconds: 300)),
    );
    on<_EmailSaved>(_onEmailSaved);
  }

  final UserRepository _userRepo;
  final String _email;

  Future<void> _onEmailSaved(
    _EmailSaved event,
    Emitter<EditEmailState> emit,
  ) async {
    emit(
      Saving(
        email: state.email,
        isEmailChanged: state.isEmailChanged,
        isEmailValid: state.isEmailValid,
      ),
    );

    try {
      final email = state.email.trim();
      final user = await _userRepo.updateUserEmail(email);

      emit(
        Saved(
          user: user,
          email: state.email,
          isEmailChanged: state.isEmailChanged,
          isEmailValid: state.isEmailValid,
        ),
      );
    } on UserException catch (e) {
      emit(
        Error(
          message: e.message,
          email: state.email,
          isEmailChanged: state.isEmailChanged,
          isEmailValid: state.isEmailValid,
        ),
      );
    }
  }

  void _onEmailChanged(_EmailChanged event, Emitter<EditEmailState> emit) {
    final emailValid = EmailValidator.validate(event.email);
    final emailChanged = event.email != _email;

    emit(
      Initial(
        email: event.email,
        isEmailChanged: emailChanged,
        isEmailValid: emailValid,
      ),
    );
  }
}
