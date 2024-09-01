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
      var message = 'Something went wrong';

      switch (e.type) {
        case DioExceptionType.connectionTimeout:
        case DioExceptionType.receiveTimeout:
        case DioExceptionType.sendTimeout:
          message = 'Request timeout. Check internet connection';
          break;
        case DioExceptionType.badCertificate:
          message = 'Bad certificate';
          break;
        default:
          final r = e.response;

          if (r != null) {
            message = getErrorMsg(r.statusCode);
          }
      }

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
    }

    return 'Something went wrong.';
  }

  @override
  Future<Project> tryGetProject() {
    // TODO: implement tryGetProject
    throw UnimplementedError();
  }
}
