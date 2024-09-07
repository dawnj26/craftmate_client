import 'package:config_repository/src/exceptions/token_exception.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:log_collector/log_collector.dart';

class ConfigRepository {
  final String apiUrl;
  final FlutterSecureStorage _storage;
  final LogCollector logger;

  const ConfigRepository({required this.apiUrl, required this.logger})
      : _storage = const FlutterSecureStorage();

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

  Future<Dio> get apiWithAuthorization async {
    final api = this.api;
    final token = await storage.read(key: 'token');

    if (token == null) {
      throw const TokenException(message: 'Token not found');
    }

    api.options.headers['Authorization'] = 'Bearer $token';

    return api;
  }

  FlutterSecureStorage get storage => _storage;
}
