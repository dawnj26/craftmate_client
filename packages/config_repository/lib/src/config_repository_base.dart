import 'package:config_repository/src/exceptions/internet_exception.dart';
import 'package:config_repository/src/exceptions/request_exception.dart';
import 'package:config_repository/src/exceptions/token_exception.dart';
import 'package:config_repository/src/helpers/helpers.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:log_collector/log_collector.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ConfigRepository {
  final String apiUrl;
  final FlutterSecureStorage _storage;
  final LogCollector logger;
  final Dio _dio;
  final ConnectionStatus connectionStatus = ConnectionStatus();
  final SharedPreferences prefs;

  ConfigRepository({
    required this.apiUrl,
    required this.logger,
    required this.prefs,
  })  : _storage = const FlutterSecureStorage(),
        _dio = Dio() {
    connectionStatus.init();
  }

  Dio get api {
    _dio.options = BaseOptions(
      baseUrl: '$apiUrl/api',
      headers: {
        'Accept': 'application/json',
      },
    );

    return _dio;
  }

  Future<Response<T>> makeRequest<T>(
    String path, {
    bool withAuthorization = false,
    String method = 'GET',
    dynamic data,
    Map<String, dynamic>? queryParameters,
    String? token,
  }) async {
    if (!await connectionStatus.checkConnection()) {
      throw const InternetException('No internet connection');
    }

    try {
      final api = token != null
          ? apiWithToken(token)
          : withAuthorization
              ? await apiWithAuthorization
              : this.api;
      final response = await api.request<T>(
        path,
        data: data,
        queryParameters: queryParameters,
        options: Options(method: method),
      );

      return response;
    } on DioException catch (e) {
      logger.error('Error in makeRequest: ${e.response?.data}');
      final message = getErrorMsg(e);
      throw RequestException(message);
    }
  }

  Dio apiWithToken(String token) {
    final api = this.api;
    api.options.headers['Authorization'] = 'Bearer $token';

    return api;
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

  String getErrorMsg(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return "Timeout occurred while sending or receiving";
      case DioExceptionType.badResponse:
        final statusCode = error.response?.statusCode;
        if (statusCode != null) {
          switch (statusCode) {
            case 401:
              return "Unauthorized";
            case 403:
              return "Forbidden";
            case 404:
              return "Not Found";
            case 500:
              return "Internal Server Error";
            default:
              return "Unknown Error";
          }
        }
        return "Bad Response";
      case DioExceptionType.cancel:
        break;
      case DioExceptionType.unknown:
        return "No Internet Connection";
      case DioExceptionType.badCertificate:
        return "Internal Server Error";
      case DioExceptionType.connectionError:
        return "Connection Error";
      default:
        return "Unknown Error";
    }
    return "Unknown Error";
  }
}
