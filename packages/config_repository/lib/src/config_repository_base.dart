import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class ConfigRepository {
  // final _apiUrl = 'http://192.168.254.101:9000/api/auth';
  final _apiUrl = 'https://e86c-110-54-233-77.ngrok-free.app/api/auth';
  final _storage = FlutterSecureStorage();
  static final instance = ConfigRepository();

  Dio get api {
    final dio = Dio(
      BaseOptions(
        baseUrl: _apiUrl,
        headers: {
          'Content-Type': 'application/json',
        },
      ),
    );

    return dio;
  }

  FlutterSecureStorage get storage => _storage;
}
