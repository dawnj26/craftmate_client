import 'package:config_repository/config_repository.dart';
import 'package:dio/dio.dart';
import 'package:project_repository/src/exceptions/project_exception.dart';
import 'package:project_repository/src/models/project.dart';

abstract class IProjectRepository {
  Future<Project> tryCreateProject(String title, bool isPulic, [String? tags]);
  Future<Project> tryGetProjectById(int id);
  Future<void> tryToggleLikeById(int projectId);
}

class ProjectRepository implements IProjectRepository {
  final ConfigRepository _config;

  const ProjectRepository({
    required ConfigRepository config,
  }) : _config = config;

  @override
  Future<Project> tryCreateProject(String title, bool isPulic,
      [String? tags]) async {
    final api = _config.api;
    final token = await _config.storage.read(key: 'token');

    if (token == null) {
      throw const ProjectException(message: 'Token not found');
    }

    api.options.headers['Authorization'] = 'Bearer $token';

    var data = <String, dynamic>{
      'title': title,
      'is_public': isPulic,
    };

    if (tags != null) {
      data['tags'] = tags;
    }

    try {
      final response = await api.post<Map<String, dynamic>>(
        '/project/create',
        data: data,
      );

      return Project.fromJson(response.data!['data']);
    } on DioException catch (e) {
      final message = getErrorMsg(e.type);

      throw ProjectException(message: message);
    }
  }

  String getErrorMsg(int? code) {
    if (code != null) {
      switch (code) {
        case 401:
          return 'Unauthorized';
        case 422:
          return 'Missing required fields or validation error';
      }
  String getErrorMsg(DioExceptionType type) {
    switch (type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.receiveTimeout:
      case DioExceptionType.sendTimeout:
        return 'Request timeout. Check internet connection';
      case DioExceptionType.badCertificate:
        return 'Bad certificate';
      default:
        return 'Something went wrong.';
    }
  }

  @override
  Future<Project> tryGetProjectById(int id) async {
    final api = _config.api;

    try {
      final response = await api.get<Map<String, dynamic>>(
        '/project/$id',
      );

      if (response.data == null) {
        throw ProjectException(message: 'Response is null');
      }

      return Project.fromJson(response.data!['data']);
    } on DioException catch (e) {
      final message = getErrorMsg(e.type);

      throw ProjectException(message: message);
    }
  }

  @override
  Future<void> tryToggleLikeById(int projectId) async {
    final api = _config.api;

    final token = await _config.storage.read(key: 'token');

    if (token == null) {
      throw const ProjectException(message: 'Token not found');
    }

    api.options.headers['Authorization'] = 'Bearer $token';

    try {
      await api.post('/project/$projectId/like');
    } on DioException catch (e) {
      final message = getErrorMsg(e.type);

      throw ProjectException(message: message);
    }
  }
}
