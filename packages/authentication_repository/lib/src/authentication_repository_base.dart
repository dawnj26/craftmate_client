// ignore_for_file: avoid_dynamic_calls

import 'dart:async';

import 'package:authentication_repository/src/exceptions/auth_exception.dart';
import 'package:authentication_repository/src/interfaces/auth_repository.dart';
import 'package:config_repository/config_repository.dart';
import 'package:dio/dio.dart';
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
      await userRepo.getUserByToken();

      yield AuthenticationStatus.authenticated;
      yield* _controller.stream;
    } on UserException catch (e) {
      // Throw error
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
    // TODO: implement logInWithEmailAndPassword
    final dio = _config.api;

    try {
      final response = await dio.post(
        '/login',
        queryParameters: {
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
    } on DioException catch (e) {
      var message = 'Login failed';

      if (e.response != null) {
        final metadata = e.response!.data['metadata'] ?? {};
        message = metadata['message'] != null
            ? 'Status: ${e.response!.statusCode} - ${metadata['message']}'
            : message;
      }

      _controller.add(AuthenticationStatus.unauthenticated);
      throw AuthException(message);
    }
  }

  @override
  Future<void> logOut() async {
    // TODO: implement logOut
    final token = await _config.storage.read(key: 'token');

    final dio = _config.api;
    dio.options = BaseOptions(
      baseUrl: dio.options.baseUrl,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token',
      },
    );

    try {
      await dio.post(
        '/logout',
      );
      _controller.add(AuthenticationStatus.unauthenticated);

      await _config.storage.delete(key: 'token');
    } on DioException catch (e) {
      var message = 'Logout failed';

      if (e.response != null) {
        final metadata = e.response!.data['metadata'] ?? {};
        message = metadata['message'] != null
            ? metadata['message'].toString()
            : message;
      }

      throw AuthException(message);
    }
  }

  @override
  Future<void> signUpWithEmailAndPassword({
    required String name,
    required String email,
    required String password,
  }) async {
    final dio = _config.api;

    try {
      final response = await dio.post<Map<String, dynamic>>(
        '/signup',
        queryParameters: {
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
    } on DioException catch (e) {
      var message = 'Signup failed';

      if (e.response != null) {
        final metadata = e.response!.data['metadata'] ?? {};
        message = metadata['message'] != null
            ? metadata['message'].toString()
            : message;
      }

      _controller.add(AuthenticationStatus.unauthenticated);

      throw AuthException(message);
    }
  }

  @override
  Future<void> socialAuth(AuthenticationType type) async {
    // TODO: implement googleAuth
    final social = type == AuthenticationType.google ? 'google' : 'facebook';
    final String url = '${_config.api.options.baseUrl}/$social';

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
    } catch (e) {
      _controller.add(AuthenticationStatus.unauthenticated);

      throw AuthException(e.toString());
    }
  }

  @override
  Future<void> sendOTP(String email) async {
    try {
      final dio = _config.api;

      await dio.post(
        '/otp/send',
        queryParameters: {
          'email': email,
        },
      );
    } on DioException catch (e) {
      var message = 'Verification failed';

      if (e.response != null) {
        final metadata = e.response!.data['metadata'] ?? {};
        message = metadata['message'] != null
            ? metadata['message'].toString()
            : message;
      }

      throw AuthException(message);
    }
  }

  void dispose() {
    _controller.close();
  }
}
