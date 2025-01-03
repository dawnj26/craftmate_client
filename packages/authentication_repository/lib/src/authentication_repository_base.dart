// ignore_for_file: avoid_dynamic_calls

import 'dart:async';

import 'package:authentication_repository/src/exceptions/auth_exception.dart';
import 'package:authentication_repository/src/interfaces/auth_repository.dart';
import 'package:config_repository/config_repository.dart';
import 'package:flutter_web_auth_2/flutter_web_auth_2.dart';
import 'package:user_repository/user_repository.dart';

enum AuthenticationStatus { unknown, authenticated, unauthenticated }

class AuthenticationRepository implements IAuthenticationRepository {
  final StreamController<AuthenticationStatus> _controller;
  final ConfigRepository _config;

  AuthenticationRepository({
    required ConfigRepository config,
  })  : _config = config,
        _controller = StreamController<AuthenticationStatus>();

  Stream<AuthenticationStatus> get status async* {
    final userRepo = UserRepository(config: _config);

    try {
      // Validate token
      await userRepo.getUserByToken(true);

      yield AuthenticationStatus.authenticated;
      yield* _controller.stream;
    } on UserException catch (e) {
      // Throw error
      _config.storage.delete(key: 'token');
      _config.prefs.remove('currentUser');

      yield AuthenticationStatus.unauthenticated;
      yield* _controller.stream;
      throw AuthException(e.message);
    }
  }

  @override
  Future<void> logInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final response = await _config.makeRequest(
        '/auth/login',
        method: 'POST',
        data: {
          'email': email,
          'password': password,
        },
      );

      final token = response.data['data']['token'];

      if (token == null) {
        _controller.add(AuthenticationStatus.unauthenticated);
        throw AuthException('Token not found');
      }

      await _config.storage.write(key: 'token', value: token.toString());

      _controller.add(AuthenticationStatus.authenticated);
    } on RequestException catch (e) {
      _controller.add(AuthenticationStatus.unauthenticated);
      throw AuthException('Login failed: ${e.message}');
    }
  }

  @override
  Future<void> logOut() async {
    try {
      await _config.makeRequest(
        '/auth/logout',
        method: 'POST',
        withAuthorization: true,
      );
      _controller.add(AuthenticationStatus.unauthenticated);
      _config.prefs.remove('currentUser');

      await _config.storage.delete(key: 'token');
    } on RequestException catch (e) {
      throw AuthException('Logout failed: ${e.message}');
    } on TokenException catch (e) {
      throw AuthException(e.message);
    }
  }

  @override
  Future<void> signUpWithEmailAndPassword({
    required String name,
    required String email,
    required String password,
  }) async {
    try {
      final response = await _config.makeRequest<Map<String, dynamic>>(
        '/auth/signup',
        method: 'POST',
        data: {
          'name': name,
          'email': email,
          'password': password,
        },
      );

      if (response.data == null) {
        throw AuthException('Something went wrong');
      }

      final token = response.data!['data']['token'];

      if (token == null) {
        throw AuthException('Token not found');
      }

      await _config.storage.write(key: 'token', value: token.toString());

      _controller.add(AuthenticationStatus.authenticated);
    } on RequestException catch (e) {
      _controller.add(AuthenticationStatus.unauthenticated);

      throw AuthException('Signup failed: ${e.message}');
    }
  }

  @override
  Future<void> socialAuth(AuthenticationType type) async {
    final social = type == AuthenticationType.google ? 'google' : 'facebook';
    final String url = '${_config.api.options.baseUrl}/auth/$social';

    try {
      final result = await FlutterWebAuth2.authenticate(
        url: url,
        callbackUrlScheme: 'craftmate',
      );

      final uri = Uri.parse(result);

      final token = uri.queryParameters['token'];
      final error = uri.queryParameters['error'];

      if (error != null && error.isNotEmpty) {
        throw Exception(error);
      }

      _config.storage.write(key: 'token', value: token);
      _controller.add(AuthenticationStatus.authenticated);
    } on Exception catch (e) {
      _controller.add(AuthenticationStatus.unauthenticated);

      throw AuthException(e.toString());
    }
  }

  @override
  Future<void> sendOTP(String email) async {
    try {
      await _config.makeRequest(
        '/auth/otp/send',
        method: 'POST',
        data: {
          'email': email,
        },
      );
    } on RequestException catch (e) {
      throw AuthException('OTP sending failed: ${e.message}');
    }
  }

  @override
  Future<String> verifyOtp(String email, String otp) async {
    try {
      final response = await _config.makeRequest<Map<String, dynamic>>(
        '/auth/otp/verify',
        method: 'POST',
        data: {
          'email': email,
          'otp': otp,
        },
      );

      final token = response.data!['data']['reset_token'];

      if (token == null) {
        throw AuthException('Token missing');
      }

      return token.toString();
    } on RequestException catch (e) {
      throw AuthException('OTP verification failed: ${e.message}');
    }
  }

  @override
  Future<void> resetPassword(String token, String password) async {
    try {
      await _config.makeRequest(
        '/auth/password/reset',
        method: 'POST',
        data: {'password': password},
        token: token,
      );
    } on RequestException catch (e) {
      throw AuthException('Password reset failed: ${e.message}');
    }
  }

  void dispose() {
    _controller.close();
  }
}
