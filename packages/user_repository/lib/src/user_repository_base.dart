import 'package:config_repository/config_repository.dart';
import 'package:dio/dio.dart';
import 'package:user_repository/src/models/user.dart';

abstract class IUserRepository {
  Future<User> getUser();
}

class UserRepository implements IUserRepository {
  final ConfigRepository _config = ConfigRepository();

  @override
  Future<User> getUser() async {
    final token = await _config.storage.read(key: 'token');

    final dio = _config.api;
    dio.options.headers['Authorization'] = 'Bearer $token';

    try {
      final response = await dio.get('/user');
      final user = User.fromJson(response.data['data'] as Map<String, dynamic>);

      return user;
    } on DioException catch (e) {
      var message = 'Login failed';

      if (e.response != null) {
        final metadata = e.response!.data['metadata'] ?? {};
        message = metadata['message'] != null
            ? metadata['message'].toString()
            : message;
      }

      throw Exception(message);
    }
  }
}
