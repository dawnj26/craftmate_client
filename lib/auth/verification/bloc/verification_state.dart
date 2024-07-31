part of 'verification_bloc.dart';

sealed class VerificationState extends Equatable {
  const VerificationState({
    this.status = FormzSubmissionStatus.initial,
    this.email = const Email.pure(),
    this.isValid = false,
  });

  final FormzSubmissionStatus status;
  final Email email;
  final bool isValid;

  @override
  List<Object> get props => [status, email];
}

final class VerificationInitial extends VerificationState {
  const VerificationInitial({
    super.email,
    super.isValid,
  });
}

final class VerificationInProgress extends VerificationState {
  const VerificationInProgress({
    super.email,
    super.isValid,
  }) : super(status: FormzSubmissionStatus.inProgress);
}

final class VerificationSuccess extends VerificationState {
  const VerificationSuccess({
    super.email,
    super.isValid,
  }) : super(status: FormzSubmissionStatus.success);
}

final class VerificationFailed extends VerificationState {
  final String message;
  const VerificationFailed({
    super.email,
    super.isValid,
    required this.message,
  }) : super(status: FormzSubmissionStatus.failure);
}
