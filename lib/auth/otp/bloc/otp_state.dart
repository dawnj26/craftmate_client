part of 'otp_bloc.dart';

sealed class OtpState extends Equatable {
  const OtpState({
    this.status = FormzSubmissionStatus.initial,
    this.otp = const Otp.pure(),
    this.isValid = false,
  });

  final FormzSubmissionStatus status;
  final Otp otp;
  final bool isValid;

  @override
  List<Object> get props => [status, otp, isValid];
}

final class OtpInitial extends OtpState {
  const OtpInitial({super.otp, super.isValid});
}

final class OtpFailed extends OtpState {
  final String message;
  const OtpFailed({
    required this.message,
    super.otp,
    super.isValid,
  }) : super(status: FormzSubmissionStatus.failure);
}

final class OtpSuccess extends OtpState {
  final String token;
  const OtpSuccess({required this.token, super.otp, super.isValid})
      : super(status: FormzSubmissionStatus.success);
}

final class OtpInProgress extends OtpState {
  const OtpInProgress({super.otp, super.isValid})
      : super(status: FormzSubmissionStatus.inProgress);
}

final class OtpSendSuccess extends OtpState {
  const OtpSendSuccess({super.otp, super.isValid});
}
