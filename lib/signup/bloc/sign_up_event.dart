part of 'sign_up_bloc.dart';

@immutable
sealed class SignUpEvent extends Equatable {
  const SignUpEvent();

  @override
  // TODO: implement props
  List<Object?> get props => [];
}

final class SignUpNameChanged extends SignUpEvent {
  final String name;
  const SignUpNameChanged({required this.name});

  @override
  // TODO: implement props
  List<Object?> get props => [name];
}

final class SignUpEmailChanged extends SignUpEvent {
  final String email;
  const SignUpEmailChanged({required this.email});

  @override
  // TODO: implement props
  List<Object?> get props => [email];
}

final class SignUpPasswordChanged extends SignUpEvent {
  final String password;
  const SignUpPasswordChanged({required this.password});

  @override
  // TODO: implement props
  List<Object?> get props => [password];
}

final class SignUpConfirmPasswordChanged extends SignUpEvent {
  final String confirmPassword;
  const SignUpConfirmPasswordChanged({required this.confirmPassword});

  @override
  // TODO: implement props
  List<Object?> get props => [confirmPassword];
}

final class SignUpSubmitted extends SignUpEvent {
  final String name;
  final String email;
  final String password;
  final String confirmPassword;
  const SignUpSubmitted({
    required this.name,
    required this.email,
    required this.password,
    required this.confirmPassword,
  });
}

final class SignUpSocialClick extends SignUpEvent {
  final AuthenticationType type;
  const SignUpSocialClick({required this.type});
}
