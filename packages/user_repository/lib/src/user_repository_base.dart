import 'dart:convert';

import 'package:config_repository/config_repository.dart';
import 'package:dio/dio.dart';
import 'package:user_repository/src/exceptions/user_exception.dart';
import 'package:user_repository/src/models/user.dart';

abstract class IUserRepository {
  Future<User> getUserByToken([bool refresh = false]);
  Future<void> getUserByEmail(String email);
  Future<User> getUserById(int id);
  Future<User> updateUserName(String name);
  Future<User> updateUserEmail(String email);
  Future<User> updateUserBio(String? bio);
  Future<User> uploadProfilePicture(String filePath);
  Future<User> toggleFollow(int id);
  Future<List<User>> getUsers();
  Future<String> shareUser(int id);
  Future<void> banUser(int id);
  Future<void> unbanUser(int id);
}

class UserRepository implements IUserRepository {
  final ConfigRepository _config;

  UserRepository({
    required ConfigRepository config,
  }) : _config = config;

  @override
  Future<List<User>> getUsers() async {
    try {
      final response = await _config.makeRequest<Map<String, dynamic>>(
        '/auth/users',
        withAuthorization: true,
      );

      final users = (response.data!['data'] as List)
          .map((e) => User.fromJson(e as Map<String, dynamic>))
          .toList();

      return users;
    } on RequestException catch (e) {
      throw UserException(e.message);
    } on TokenException catch (e) {
      throw UserException(e.message);
    }
  }

  @override
  Future<User> toggleFollow(int id) async {
    try {
      final response = await _config.makeRequest<Map<String, dynamic>>(
        '/user/$id/follow',
        method: 'POST',
        withAuthorization: true,
      );

      final user =
          User.fromJson(response.data!['data'] as Map<String, dynamic>);

      return user;
    } on RequestException catch (e) {
      throw UserException(e.message);
    } on TokenException catch (e) {
      throw UserException(e.message);
    }
  }

  @override
  Future<User> getUserById(int id) async {
    try {
      final response = await _config.makeRequest<Map<String, dynamic>>(
        '/user/$id',
        withAuthorization: true,
      );

      final user =
          User.fromJson(response.data!['data'] as Map<String, dynamic>);

      return user;
    } on RequestException catch (e) {
      throw UserException(e.message);
    } on TokenException catch (e) {
      throw UserException(e.message);
    }
  }

  @override
  Future<User> uploadProfilePicture(String filePath) async {
    final filename = filePath.split('/').last;

    try {
      final formData = FormData.fromMap({
        'image': await MultipartFile.fromFile(filePath, filename: filename),
      });

      final response = await _config.makeRequest<Map<String, dynamic>>(
        '/user/upload/picture',
        method: 'POST',
        data: formData,
        withAuthorization: true,
      );

      if (response.data == null) {
        throw const UserException('No response');
      }

      final user =
          User.fromJson(response.data!['data'] as Map<String, dynamic>);

      _config.prefs.setString('currentUser', jsonEncode(user.toJson()));

      return user;
    } on TokenException catch (e) {
      _config.logger.error(e.message);
      throw UserException(e.message);
    } on DioException catch (e) {
      final message = _config.getErrorMsg(e);
      _config.logger.error(e.response?.data);

      throw UserException(message);
    }
  }

  @override
  Future<User> updateUserName(String name) async {
    try {
      final response = await _config.makeRequest<Map<String, dynamic>>(
        '/user/update/name',
        method: 'POST',
        data: {
          'name': name,
        },
        withAuthorization: true,
      );

      final user =
          User.fromJson(response.data!['data'] as Map<String, dynamic>);

      _config.prefs.setString('currentUser', jsonEncode(user.toJson()));

      return user;
    } on RequestException catch (e) {
      throw UserException(e.message);
    } on TokenException catch (e) {
      throw UserException(e.message);
    }
  }

  @override
  Future<User> getUserByToken([bool refresh = false]) async {
    final userCache = _config.prefs.getString('currentUser');

    if (userCache != null && !refresh) {
      return User.fromJson(
        jsonDecode(userCache) as Map<String, dynamic>,
      );
    }

    try {
      final response = await _config.makeRequest<Map<String, dynamic>>(
        '/auth/user',
        withAuthorization: true,
      );

      final user =
          User.fromJson(response.data!['data'] as Map<String, dynamic>);

      _config.prefs.setString('currentUser', jsonEncode(user.toJson()));

      return user;
    } on RequestException catch (e) {
      throw UserException(e.message);
    } on TokenException catch (e) {
      throw UserException(e.message);
    }
  }

  @override
  Future<void> getUserByEmail(String email) async {
    try {
      await _config.makeRequest<Map<String, dynamic>>(
        '/auth/user/verify',
        queryParameters: {
          'email': email,
        },
      );
    } on RequestException catch (e) {
      throw UserException(e.message);
    }
  }

  @override
  Future<User> updateUserBio(String? bio) async {
    try {
      final response = await _config.makeRequest<Map<String, dynamic>>(
        '/user/update/bio',
        method: 'POST',
        data: {
          'bio': bio,
        },
        withAuthorization: true,
      );

      final user =
          User.fromJson(response.data!['data'] as Map<String, dynamic>);

      _config.prefs.setString('currentUser', jsonEncode(user.toJson()));

      return user;
    } on RequestException catch (e) {
      throw UserException(e.message);
    } on TokenException catch (e) {
      throw UserException(e.message);
    }
  }

  @override
  Future<User> updateUserEmail(String email) async {
    try {
      final response = await _config.makeRequest<Map<String, dynamic>>(
        '/user/update/email',
        method: 'POST',
        data: {
          'email': email,
        },
        withAuthorization: true,
      );

      final user =
          User.fromJson(response.data!['data'] as Map<String, dynamic>);

      _config.prefs.setString('currentUser', jsonEncode(user.toJson()));

      return user;
    } on RequestException catch (e) {
      throw UserException(e.message);
    } on TokenException catch (e) {
      throw UserException(e.message);
    }
  }

  @override
  Future<String> shareUser(int id) async {
    try {
      final response = await _config.makeRequest<Map<String, dynamic>>(
        '/user/$id/share',
        withAuthorization: true,
      );

      if (response.data == null) {
        throw const UserException('No response');
      }

      // ignore: avoid_dynamic_calls
      return response.data!['data']['share_link'] as String;
    } on RequestException catch (e) {
      throw UserException(e.message);
    } on TokenException catch (e) {
      throw UserException(e.message);
    }
  }

  @override
  Future<void> banUser(int id) async {
    try {
      await _config.makeRequest<Map<String, dynamic>>(
        '/user/$id/ban',
        method: 'DELETE',
        withAuthorization: true,
      );
    } on RequestException catch (e) {
      throw UserException(e.message);
    } on TokenException catch (e) {
      throw UserException(e.message);
    }
  }

  @override
  Future<void> unbanUser(int id) async {
    try {
      await _config.makeRequest<Map<String, dynamic>>(
        '/user/$id/unban',
        method: 'POST',
        withAuthorization: true,
      );
    } on RequestException catch (e) {
      throw UserException(e.message);
    } on TokenException catch (e) {
      throw UserException(e.message);
    }
  }
}
