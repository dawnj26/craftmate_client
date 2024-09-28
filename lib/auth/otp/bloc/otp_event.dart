part of 'otp_bloc.dart';

sealed class OtpEvent extends Equatable {
  const OtpEvent();

  @override
  List<Object> get props => [];
}

final class OtpSubmit extends OtpEvent {
  const OtpSubmit({required this.otp});
  final String otp;
}

final class OtpSend extends OtpEvent {
  const OtpSend();
}
