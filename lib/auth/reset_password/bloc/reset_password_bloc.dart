import 'package:authentication_repository/authentication_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:craftmate_client/auth/signup/models/confirm_password.dart';
import 'package:craftmate_client/auth/signup/models/password.dart';
import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';

part 'reset_password_event.dart';
part 'reset_password_state.dart';

class ResetPasswordBloc extends Bloc<ResetPasswordEvent, ResetPasswordState> {
  ResetPasswordBloc({
    required AuthenticationRepository authRepo,
    required String token,
  })  : _token = token,
        _authenticationRepository = authRepo,
        super(const ResetPasswordInitial()) {
    on<ResetPasswordPasswordChanged>(_onPasswordChange);
    on<ResetPasswordConfirmPasswordChanged>(_onConfirmPasswordChange);
    on<ResetPasswordSubmitted>(_onSubmit);
  }

  final AuthenticationRepository _authenticationRepository;
  final String _token;

  void _onPasswordChange(
    ResetPasswordPasswordChanged event,
    Emitter<ResetPasswordState> emit,
  ) {
    final password = Password.dirty(event.password);
    final confirmPassword = ConfirmPassword.dirty(
      password: password.value,
      value: state.confirmPassword.value,
    );

    emit(
      ResetPasswordInitial(
        password: password,
        confirmPassword: confirmPassword,
        isValid: Formz.validate([password, confirmPassword]),
      ),
    );
  }

  void _onConfirmPasswordChange(
    ResetPasswordConfirmPasswordChanged event,
    Emitter<ResetPasswordState> emit,
  ) {
    final confirmPassword = ConfirmPassword.dirty(
      password: state.password.value,
      value: event.confirmPassword,
    );

    emit(
      ResetPasswordInitial(
        password: state.password,
        confirmPassword: confirmPassword,
        isValid: Formz.validate([state.password, confirmPassword]),
      ),
    );
  }

  Future<void> _onSubmit(
    ResetPasswordSubmitted event,
    Emitter<ResetPasswordState> emit,
  ) async {
    if (state.isValid) {
      try {
        emit(
          ResetPasswordInProgress(
            confirmPassword: state.confirmPassword,
            password: state.password,
            isValid: state.isValid,
          ),
        );

        await _authenticationRepository.resetPassword(
          _token,
          state.password.value,
        );

        emit(const ResetPasswordSuccess());
      } on AuthException catch (e) {
        emit(
          ResetPasswordFailed(
            message: e.message,
            password: state.password,
            confirmPassword: state.confirmPassword,
            isValid: state.isValid,
          ),
        );
      }
    } else {
      emit(
        ResetPasswordInitial(
          password: state.password,
          confirmPassword: state.confirmPassword,
          isValid: Formz.validate([state.password, state.confirmPassword]),
        ),
      );
    }
  }
}
