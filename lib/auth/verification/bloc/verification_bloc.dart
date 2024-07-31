import 'package:authentication_repository/authentication_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:craftmate_client/auth/login/models/email.dart';
import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';

part 'verification_event.dart';
part 'verification_state.dart';

class VerificationBloc extends Bloc<VerificationEvent, VerificationState> {
  VerificationBloc({
    required AuthenticationRepository authenticationRepository,
  })  : _authenticationRepository = authenticationRepository,
        super(const VerificationInitial()) {
    on<EmailInputChange>(_onEmailChange);
    on<FormSubmitted>(_onFormSubmitted);
  }

  final AuthenticationRepository _authenticationRepository;

  void _onEmailChange(
    EmailInputChange event,
    Emitter<VerificationState> emit,
  ) {
    final email = Email.dirty(event.email);

    emit(VerificationInitial(email: email, isValid: Formz.validate([email])));
  }

  Future<void> _onFormSubmitted(
    FormSubmitted event,
    Emitter<VerificationState> emit,
  ) async {
    if (state.isValid) {
      try {
        emit(
          VerificationInProgress(email: state.email, isValid: state.isValid),
        );

        await _authenticationRepository.sendOTP(state.email.value);

        emit(VerificationSuccess(email: state.email, isValid: state.isValid));
      } on AuthException catch (e) {
        emit(
          VerificationFailed(
            message: e.message,
            email: state.email,
            isValid: state.isValid,
          ),
        );
      }
    } else {
      final email = Email.dirty(state.email.value);

      emit(VerificationInitial(email: email, isValid: Formz.validate([email])));
    }
  }
}
