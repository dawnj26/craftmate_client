part of 'reset_password_bloc.dart';

sealed class ResetPasswordState extends Equatable {
  const ResetPasswordState({
    this.status = FormzSubmissionStatus.initial,
    this.password = const Password.pure(),
    this.confirmPassword = const ConfirmPassword.pure(),
    this.isValid = false,
  });

  final FormzSubmissionStatus status;
  final Password password;
  final ConfirmPassword confirmPassword;
  final bool isValid;

  @override
  List<Object> get props => [status, password, confirmPassword, isValid];
}

final class ResetPasswordInitial extends ResetPasswordState {
  const ResetPasswordInitial({
    super.password,
    super.confirmPassword,
    super.isValid,
  }) : super(status: FormzSubmissionStatus.initial);
}

final class ResetPasswordInProgress extends ResetPasswordState {
  const ResetPasswordInProgress({
    super.password,
    super.confirmPassword,
    super.isValid,
  }) : super(status: FormzSubmissionStatus.inProgress);
}

final class ResetPasswordSuccess extends ResetPasswordState {
  const ResetPasswordSuccess({
    super.password,
    super.confirmPassword,
    super.isValid,
  }) : super(status: FormzSubmissionStatus.success);
}

final class ResetPasswordFailed extends ResetPasswordState {
  final String message;
  const ResetPasswordFailed({
    required this.message,
    super.password,
    super.confirmPassword,
    super.isValid,
  }) : super(status: FormzSubmissionStatus.failure);
}
