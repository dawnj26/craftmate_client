import 'package:config_repository/config_repository.dart';
import 'package:user_repository/src/exceptions/user_exception.dart';
import 'package:user_repository/src/models/user.dart';

abstract class IUserRepository {
  Future<User> getUserByToken();
  Future<void> getUserByEmail(String email);
}

class UserRepository implements IUserRepository {
  final ConfigRepository _config;

  UserRepository({
    required ConfigRepository config,
  }) : _config = config;

  @override
  Future<User> getUserByToken() async {
    try {
      final response = await _config.makeRequest<Map<String, dynamic>>(
        '/auth/user',
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
}
