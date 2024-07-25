import 'package:authentication_repository/authentication_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:craftmate_client/logger.dart';
import 'package:craftmate_client/login/models/models.dart';
import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';
import 'package:meta/meta.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc({
    required AuthenticationRepository authenticationRepository,
  })  : _authenticationRepository = authenticationRepository,
        super(const LoginInitial()) {
    on<LoginEmailChanged>(_onEmailChanged);
    on<LoginPasswordChanged>(_onPasswordChanged);
    on<LoginSubmitted>(_onSubmitted);
  }

  final AuthenticationRepository _authenticationRepository;

  void _onEmailChanged(
    LoginEmailChanged event,
    Emitter<LoginState> emit,
  ) {
    final email = Email.dirty(event.email);

    emit(
      LoginInitial(
        email: email,
        password: state.password,
        isValid: Formz.validate(
          [state.password, email],
        ),
      ),
    );
  }

  void _onPasswordChanged(
    LoginPasswordChanged event,
    Emitter<LoginState> emit,
  ) {
    final password = Password.dirty(event.password);

    emit(
      LoginInitial(
        email: state.email,
        password: password,
        isValid: Formz.validate(
          [password, state.email],
        ),
      ),
    );
  }

  Future<void> _onSubmitted(
    LoginSubmitted event,
    Emitter<LoginState> emit,
  ) async {
    if (state.isValid) {
      emit(
        LoginInProgress(
          email: state.email,
          password: state.password,
          isValid: state.isValid,
        ),
      );
      try {
        await _authenticationRepository.logInWithEmailAndPassword(
          email: state.email.value,
          password: state.password.value,
        );
        emit(
          LoginSuccess(
            email: state.email,
            password: state.password,
            isValid: state.isValid,
          ),
        );
      } on AuthException catch (e) {
        log.e(e);
        emit(
          LoginFailed(
            message: e.message,
            email: state.email,
            password: state.password,
            isValid: state.isValid,
          ),
        );
      }
    } else {
      final email = Email.dirty(event.email);
      final password = Password.dirty(event.password);
      emit(
        LoginInitial(
          email: email,
          password: password,
          isValid: Formz.validate(
            [password, email],
          ),
        ),
      );
    }
  }
}
