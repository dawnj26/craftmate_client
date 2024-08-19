part of 'auth_bloc.dart';

@immutable
sealed class AuthEvent extends Equatable {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

final class AuthStatusChanged extends AuthEvent {
  final AuthenticationStatus status;
  AuthStatusChanged(this.status);
}

final class AuthLogoutRequest extends AuthEvent {}
