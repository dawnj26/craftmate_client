import 'package:authentication_repository/authentication_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:craftmate_client/auth/login/models/email.dart';
import 'package:craftmate_client/auth/signup/models/models.dart';
import 'package:craftmate_client/globals.dart';
import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';
import 'package:meta/meta.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpBloc({required AuthenticationRepository authenticationRepository})
      : _authRepo = authenticationRepository,
        super(
          const SignUpInitial(),
        ) {
    on<SignUpNameChanged>(_onNameChanged);
    on<SignUpEmailChanged>(_onEmailChanged);
    on<SignUpPasswordChanged>(_onPasswordChanged);
    on<SignUpSubmitted>(_onSubmit);
    on<SignUpConfirmPasswordChanged>(_onConfirmPasswordChange);
    on<SignUpSocialClick>(_onSocialAuthClick);
  }

  final AuthenticationRepository _authRepo;

  void _onNameChanged(SignUpNameChanged event, Emitter<SignUpState> emit) {
    final name = Name.dirty(event.name);

    emit(
      SignUpInitial(
        name: name,
        email: state.email,
        password: state.password,
        confirmPassword: state.confirmPassword,
        isValid: Formz.validate(
          [name, state.email, state.password],
        ),
      ),
    );
  }

  void _onEmailChanged(SignUpEmailChanged event, Emitter<SignUpState> emit) {
    final email = Email.dirty(event.email);

    emit(
      SignUpInitial(
        name: state.name,
        email: email,
        password: state.password,
        confirmPassword: state.confirmPassword,
        isValid: Formz.validate(
          [state.name, email, state.password],
        ),
      ),
    );
  }

  void _onPasswordChanged(
    SignUpPasswordChanged event,
    Emitter<SignUpState> emit,
  ) {
    final password = Password.dirty(event.password);
    final confirmPassword = ConfirmPassword.dirty(
      password: password.value,
      value: state.confirmPassword.value,
    );

    emit(
      SignUpInitial(
        name: state.name,
        email: state.email,
        password: password,
        confirmPassword: confirmPassword,
        isValid: Formz.validate(
          [state.name, state.email, password, confirmPassword],
        ),
      ),
    );
  }

  void _onConfirmPasswordChange(
    SignUpConfirmPasswordChanged event,
    Emitter<SignUpState> emit,
  ) {
    final confirmPassword = ConfirmPassword.dirty(
      password: state.password.value,
      value: event.confirmPassword,
    );

    emit(
      SignUpInitial(
        name: state.name,
        email: state.email,
        password: state.password,
        confirmPassword: confirmPassword,
        isValid: Formz.validate(
          [state.name, state.email, state.password, confirmPassword],
        ),
      ),
    );
  }

  Future<void> _onSubmit(
    SignUpSubmitted event,
    Emitter<SignUpState> emit,
  ) async {
    if (state.isValid) {
      emit(
        SignUpInProgress(
          isValid: state.isValid,
          email: state.email,
          name: state.name,
          password: state.password,
          confirmPassword: state.confirmPassword,
        ),
      );

      try {
        await _authRepo.signUpWithEmailAndPassword(
          name: state.name.value,
          email: state.email.value,
          password: state.password.value,
        );
        emit(
          SignUpSuccess(
            isValid: state.isValid,
            email: state.email,
            name: state.name,
            password: state.password,
            confirmPassword: state.confirmPassword,
          ),
        );
      } on AuthException catch (e) {
        logger.error(e.message, e);
        emit(
          SignUpFailed(
            message: e.message,
            isValid: state.isValid,
            email: state.email,
            name: state.name,
            password: state.password,
            confirmPassword: state.confirmPassword,
          ),
        );
      }
    } else {
      final name = Name.dirty(event.name);
      final email = Email.dirty(event.email);
      final password = Password.dirty(event.password);
      final confirmPassword = ConfirmPassword.dirty(
        password: event.password,
        value: event.confirmPassword,
      );
      emit(
        SignUpInitial(
          name: name,
          email: email,
          password: password,
          confirmPassword: confirmPassword,
          isValid: Formz.validate(
            [name, email, password, confirmPassword],
          ),
        ),
      );
    }
  }

  Future<void> _onSocialAuthClick(
    SignUpSocialClick event,
    Emitter<SignUpState> emit,
  ) async {
    try {
      emit(
        SignUpInProgress(
          isValid: state.isValid,
          email: state.email,
          name: state.name,
          password: state.password,
          confirmPassword: state.confirmPassword,
        ),
      );

      await _authRepo.socialAuth(event.type);
      emit(
        SignUpSuccess(
          isValid: state.isValid,
          email: state.email,
          name: state.name,
          password: state.password,
          confirmPassword: state.confirmPassword,
        ),
      );
    } on AuthException catch (e) {
      logger.error(e.message, e);
      emit(
        SignUpFailed(
          message: e.message,
          isValid: state.isValid,
          email: state.email,
          name: state.name,
          password: state.password,
          confirmPassword: state.confirmPassword,
        ),
      );
    }
  }
}
