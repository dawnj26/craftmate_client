part of 'reset_password_bloc.dart';

sealed class ResetPasswordEvent extends Equatable {
  const ResetPasswordEvent();

  @override
  List<Object> get props => [];
}

final class ResetPasswordPasswordChanged extends ResetPasswordEvent {
  const ResetPasswordPasswordChanged({
    required this.password,
  });
  final String password;
}

final class ResetPasswordConfirmPasswordChanged extends ResetPasswordEvent {
  const ResetPasswordConfirmPasswordChanged({
    required this.confirmPassword,
  });
  final String confirmPassword;
}

final class ResetPasswordSubmitted extends ResetPasswordEvent {
  const ResetPasswordSubmitted();
}
