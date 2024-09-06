import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:log_collector/log_collector.dart';

class ConfigRepository {
  final String apiUrl;
  final FlutterSecureStorage _storage;
  final LogCollector logger;

  ConfigRepository({required this.apiUrl, required this.logger})
      : _storage = FlutterSecureStorage();

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
