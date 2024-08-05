part of 'reset_password_bloc.dart';

sealed class ResetPasswordEvent extends Equatable {
  const ResetPasswordEvent();

  @override
  List<Object> get props => [];
}

final class ResetPasswordPasswordChanged extends ResetPasswordEvent {
  final String password;

  const ResetPasswordPasswordChanged({
    required this.password,
  });
}

final class ResetPasswordConfirmPasswordChanged extends ResetPasswordEvent {
  final String confirmPassword;

  const ResetPasswordConfirmPasswordChanged({
    required this.confirmPassword,
  });
}

final class ResetPasswordSubmitted extends ResetPasswordEvent {
  const ResetPasswordSubmitted();
}
