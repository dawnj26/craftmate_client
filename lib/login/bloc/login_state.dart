part of 'login_bloc.dart';

sealed class LoginState extends Equatable {
  const LoginState({
    this.status = FormzSubmissionStatus.initial,
    this.email = const Email.pure(),
    this.password = const Password.pure(),
    this.isValid = false,
  });

  final FormzSubmissionStatus status;
  final Email email;
  final Password password;
  final bool isValid;

  @override
  List<Object> get props => [status, email, password];
}

final class LoginInitial extends LoginState {
  const LoginInitial({
    super.email,
    super.password,
    super.isValid,
  });
}

final class LoginFailed extends LoginState {
  final String message;
  const LoginFailed({
    required this.message,
    required super.email,
    required super.password,
    required super.isValid,
  }) : super(status: FormzSubmissionStatus.failure);
}

final class LoginSuccess extends LoginState {
  const LoginSuccess({
    required super.email,
    required super.password,
    required super.isValid,
  }) : super(status: FormzSubmissionStatus.success);
}

final class LoginInProgress extends LoginState {
  const LoginInProgress({
    required super.email,
    required super.password,
    required super.isValid,
  }) : super(status: FormzSubmissionStatus.inProgress);
}
