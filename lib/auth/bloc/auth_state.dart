part of 'auth_bloc.dart';

@immutable
sealed class AuthState extends Equatable {
  const AuthState({
    this.status = AuthenticationStatus.unknown,
    this.user = const User(),
  });

  final AuthenticationStatus status;
  final User user;

  @override
  // TODO: implement props
  List<Object?> get props => [status, user];
}

final class AuthInProgress extends AuthState {
  const AuthInProgress({
    super.user,
    super.status,
  });
}

final class _AuthInitial extends AuthState {
  const _AuthInitial() : super();
}

final class _Authenticated extends AuthState {
  const _Authenticated(User user)
      : super(status: AuthenticationStatus.authenticated, user: user);
}

final class _Unauthenticated extends AuthState {
  const _Unauthenticated()
      : super(status: AuthenticationStatus.unauthenticated);
}
