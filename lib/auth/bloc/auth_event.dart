part of 'auth_bloc.dart';

@immutable
sealed class AuthEvent extends Equatable {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

final class AuthStatusChanged extends AuthEvent {
  AuthStatusChanged(this.status);
  final AuthenticationStatus status;
}

final class AuthLogoutRequest extends AuthEvent {}
