// ignore_for_file: avoid_dynamic_calls

import 'package:config_repository/config_repository.dart';
import 'package:dio/dio.dart';
import 'package:user_repository/src/exceptions/user_exception.dart';
import 'package:user_repository/src/models/user.dart';

abstract class IUserRepository {
  Future<User> getUserByToken();
}

class UserRepository implements IUserRepository {
  final ConfigRepository _config;

  UserRepository({
    required ConfigRepository config,
  }) : _config = config;

  @override
  Future<User> getUserByToken() async {
    final token = await _config.storage.read(key: 'token');

    if (token == null) {
      throw const UserException('Token not found');
    }

    final dio = _config.api;
    dio.options.headers['Authorization'] = 'Bearer $token';

    try {
      final response = await dio.get<Map<String, dynamic>>('/user');
      final user =
          User.fromJson(response.data!['data'] as Map<String, dynamic>);

      return user;
    } on DioException catch (e) {
      var message = 'Login failed';

      if (e.response != null) {
        // null checks if response provides error
        final metadata = e.response!.data['metadata'] ?? {};
        message = metadata['message'] != null
            ? metadata['message'].toString()
            : message;
      }

      throw UserException(message);
    }
  }
}
