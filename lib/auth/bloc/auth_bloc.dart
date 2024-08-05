import 'dart:async';

import 'package:authentication_repository/authentication_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:craftmate_client/logger.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:user_repository/user_repository.dart';

part 'auth_event.dart';
part 'auth_state.dart';

/// A BLoC (Business Logic Component) that manages authentication states.
///
/// It listens to authentication status changes and user actions to emit new states.
/// Requires [AuthenticationRepository] and [UserRepository] to function, which
/// handle the actual authentication process and user data fetching respectively.
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  /// Constructs an instance of [AuthBloc].
  ///
  /// Takes [authenticationRepository] and [userRepository] as required parameters.
  AuthBloc({
    required AuthenticationRepository authenticationRepository,
    required UserRepository userRepository,
  })  : _authenticationRepository = authenticationRepository,
        _userRepository = userRepository,
        super(const _AuthInitial()) {
    on<AuthStatusChanged>(_onAuthenticationStatusChanged);
    on<AuthLogoutRequest>(_onLogOut);
    _authenticationStatusSubscription = _authenticationRepository.status.listen(
      (status) => add(AuthStatusChanged(status)),
    );
  }

  final AuthenticationRepository _authenticationRepository;
  final UserRepository _userRepository;
  late StreamSubscription<AuthenticationStatus>
      _authenticationStatusSubscription;

  /// Closes the BLoC and cancels the authentication status subscription.
  @override
  Future<void> close() {
    _authenticationStatusSubscription.cancel();
    return super.close();
  }

  /// Handles changes in authentication status.
  ///
  /// Emits different states based on the current authentication status.
  /// If authenticated, attempts to fetch the user and emits [_Authenticated] with the user.
  /// If unauthenticated or unknown, emits [_Unauthenticated] or [_AuthInitial] respectively.
  Future<void> _onAuthenticationStatusChanged(
    AuthStatusChanged event,
    Emitter<AuthState> emit,
  ) async {
    switch (event.status) {
      case AuthenticationStatus.authenticated:
        final user = await _tryGetUser();
        if (user != null) {
          return emit(_Authenticated(user));
        }
        return emit(const _Unauthenticated());
      case AuthenticationStatus.unauthenticated:
        return emit(const _Unauthenticated());
      case AuthenticationStatus.unknown:
        return emit(const _AuthInitial());
    }
  }

  /// Attempts to fetch the current user.
  ///
  /// Returns a [User] if successful, or null if an error occurs.
  Future<User?> _tryGetUser() async {
    try {
      final user = await _userRepository.getUserByToken();
      return user;
    } on UserException catch (e) {
      logger.logError(e.message, e, StackTrace.current);
      return null;
    }
  }

  Future<void> _onLogOut(
    AuthLogoutRequest event,
    Emitter<AuthState> emit,
  ) async {
    try {
      await _authenticationRepository.logOut();
    } catch (e) {
      logger.logError('Logout error', e, StackTrace.current);
    }
  }
}
