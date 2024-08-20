import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class ConfigRepository {
  // final _apiUrl = 'http://192.168.254.101:9000/api/auth';
  String apiUrl;
  final FlutterSecureStorage _storage;

  ConfigRepository({required this.apiUrl}) : _storage = FlutterSecureStorage();

  Dio get api {
    final dio = Dio(
      BaseOptions(
        baseUrl: '$apiUrl/api',
        headers: {
          'Content-Type': 'application/json',
        },
      ),
    );

    return dio;
  }

  FlutterSecureStorage get storage => _storage;
}
