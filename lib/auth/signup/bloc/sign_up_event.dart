part of 'sign_up_bloc.dart';

@immutable
sealed class SignUpEvent extends Equatable {
  const SignUpEvent();

  @override
  // TODO: implement props
  List<Object?> get props => [];
}

final class SignUpNameChanged extends SignUpEvent {
  const SignUpNameChanged({required this.name});
  final String name;

  @override
  // TODO: implement props
  List<Object?> get props => [name];
}

final class SignUpEmailChanged extends SignUpEvent {
  const SignUpEmailChanged({required this.email});
  final String email;

  @override
  // TODO: implement props
  List<Object?> get props => [email];
}

final class SignUpPasswordChanged extends SignUpEvent {
  const SignUpPasswordChanged({required this.password});
  final String password;

  @override
  // TODO: implement props
  List<Object?> get props => [password];
}

final class SignUpConfirmPasswordChanged extends SignUpEvent {
  const SignUpConfirmPasswordChanged({required this.confirmPassword});
  final String confirmPassword;

  @override
  // TODO: implement props
  List<Object?> get props => [confirmPassword];
}

final class SignUpSubmitted extends SignUpEvent {
  const SignUpSubmitted({
    required this.name,
    required this.email,
    required this.password,
    required this.confirmPassword,
  });
  final String name;
  final String email;
  final String password;
  final String confirmPassword;
}

final class SignUpSocialClick extends SignUpEvent {
  const SignUpSocialClick({required this.type});
  final AuthenticationType type;
}
