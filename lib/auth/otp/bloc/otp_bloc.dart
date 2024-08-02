import 'package:authentication_repository/authentication_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:craftmate_client/auth/otp/models/otp.dart';
import 'package:craftmate_client/logger.dart';
import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';

part 'otp_event.dart';
part 'otp_state.dart';

class OtpBloc extends Bloc<OtpEvent, OtpState> {
  OtpBloc({required String email, required AuthenticationRepository authRepo})
      : _authenticationRepository = authRepo,
        _email = email,
        super(const OtpInitial()) {
    on<OtpSubmit>(_onSubmit);
    on<OtpResend>(_onResend);
  }

  final String _email;
  final AuthenticationRepository _authenticationRepository;

  Future<void> _onSubmit(OtpSubmit event, Emitter<OtpState> emit) async {
    final otp = Otp.dirty(event.otp);
    final valid = Formz.validate([otp]);

    if (valid) {
      emit(OtpInProgress(otp: otp, isValid: valid));
      logger.logInfo('Email: $_email, OTP: ${state.otp.value}');

      try {
        await _authenticationRepository.verifyOtp(_email, state.otp.value);
        emit(OtpSuccess(otp: state.otp, isValid: state.isValid));
      } on AuthException catch (e) {
        emit(
          OtpFailed(message: e.message, otp: state.otp, isValid: state.isValid),
        );
      }
    } else {
      emit(OtpInitial(otp: otp, isValid: valid));
    }
  }

  Future<void> _onResend(OtpResend event, Emitter<OtpState> emit) async {
    try {
      emit(OtpInProgress(otp: state.otp, isValid: state.isValid));

      await _authenticationRepository.sendOTP(_email);

      emit(OtpResendSuccess(otp: state.otp, isValid: state.isValid));
    } on AuthException catch (e) {
      emit(
        OtpFailed(message: e.message, otp: state.otp, isValid: state.isValid),
      );
    }
  }
}
