part of 'auth_bloc.dart';

@immutable
sealed class AuthEvent {}

final class AuthStatusChanged extends AuthEvent {
  final AuthenticationStatus status;
  AuthStatusChanged(this.status);
}

final class AuthLogoutRequest extends AuthEvent {}
