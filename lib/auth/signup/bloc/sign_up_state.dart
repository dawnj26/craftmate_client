part of 'sign_up_bloc.dart';

@immutable
sealed class SignUpState extends Equatable {
  const SignUpState({
    this.status = FormzSubmissionStatus.initial,
    this.name = const Name.pure(),
    this.email = const Email.pure(),
    this.password = const Password.pure(),
    this.confirmPassword = const ConfirmPassword.pure(),
    this.isValid = false,
  });

  final FormzSubmissionStatus status;
  final Name name;
  final Email email;
  final Password password;
  final ConfirmPassword confirmPassword;
  final bool isValid;

  @override
  List<Object> get props => [status, email, password, confirmPassword, name];
}

final class SignUpInitial extends SignUpState {
  const SignUpInitial({
    super.name,
    super.email,
    super.password,
    super.isValid,
    super.confirmPassword,
  }) : super(status: FormzSubmissionStatus.initial);
}

final class SignUpSuccess extends SignUpState {
  const SignUpSuccess({
    super.name,
    super.email,
    super.password,
    super.isValid,
    super.confirmPassword,
  }) : super(status: FormzSubmissionStatus.success);
}

final class SignUpFailed extends SignUpState {
  const SignUpFailed({
    required this.message,
    super.name,
    super.email,
    super.password,
    super.isValid,
    super.confirmPassword,
  }) : super(status: FormzSubmissionStatus.failure);
  final String message;
}

final class SignUpInProgress extends SignUpState {
  const SignUpInProgress({
    super.name,
    super.email,
    super.password,
    super.isValid,
    super.confirmPassword,
  }) : super(status: FormzSubmissionStatus.inProgress);
}
