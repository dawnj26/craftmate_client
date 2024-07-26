// ignore_for_file: avoid_dynamic_calls

import 'dart:async';

import 'package:authentication_repository/src/exceptions/auth_exception.dart';
import 'package:config_repository/config_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter_web_auth_2/flutter_web_auth_2.dart';

abstract class IAuthenticationRepository {
  Future<void> logInWithEmailAndPassword(
      {required String email, required String password});

  Future<void> signUpWithEmailAndPassword(
      {required String name, required String email, required String password});

  Future<void> googleAuth();

  Future<void> logOut();
}

enum AuthenticationStatus { unknown, authenticated, unauthenticated }

class AuthenticationRepository implements IAuthenticationRepository {
  final _controller = StreamController<AuthenticationStatus>();
  final _config = ConfigRepository.instance;

  Stream<AuthenticationStatus> get status async* {
    final token = await _config.storage.read(key: 'token');

    if (token != null) {
      yield AuthenticationStatus.authenticated;
    } else {
      yield AuthenticationStatus.unauthenticated;
    }

    yield* _controller.stream;
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

      _controller.add(AuthenticationStatus.authenticated);
      final token = response.data['data']['token'];

      if (token == null) {
        _controller.add(AuthenticationStatus.unauthenticated);
        throw AuthException('Token not found');
      }

      await _config.storage.write(key: 'token', value: token.toString());
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
      final response = await dio.post(
        '/signup',
        queryParameters: {
          'name': name,
          'email': email,
          'password': password,
        },
      );

      if (response.data['data'] == null) {
        throw AuthException('Signup failed');
      }

      final token = response.data['data']['token'];

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

//P4A@h1xw!*hf
  @override
  Future<void> googleAuth() async {
    // TODO: implement googleAuth
    final result = await FlutterWebAuth2.authenticate(
      url: '${_config.api.options.baseUrl}/google',
      callbackUrlScheme: 'craftmate',
    );

    final token = Uri.parse(result).queryParameters['token'];

    print(token);
  }

  void dispose() {
    _controller.close();
  }
}
