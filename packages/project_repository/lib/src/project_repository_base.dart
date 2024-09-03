import 'dart:async';

import 'package:config_repository/config_repository.dart';
import 'package:dio/dio.dart';
import 'package:project_repository/src/exceptions/project_exception.dart';
import 'package:project_repository/src/models/project.dart';

abstract class IProjectRepository {
  Future<Project> tryCreateProject(String title, bool isPulic, [String? tags]);
  Future<Project> tryGetProjectById(int id);
  Future<void> tryToggleLikeById(Project project);
}

class ProjectRepository implements IProjectRepository {
  final ConfigRepository _config;
  late final StreamController<Project> _streamController;

  ProjectRepository({
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

      final project = Project.fromJson(response.data!['data']);

      return project;
    } on DioException catch (e) {
      final message = getErrorMsg(e.type);

      throw ProjectException(message: message);
    }
  }

  void _initController() {
    _streamController = StreamController<Project>.broadcast();
  }

  Stream<Project> getProjectStream(Project project) {
    _initController();
    _streamController.add(project);

    return _streamController.stream.where((p) => p.id == project.id);
  }

  @override
  Future<void> tryToggleLikeById(Project project) async {
    final api = _config.api;

    final token = await _config.storage.read(key: 'token');

    if (token == null) {
      throw const ProjectException(message: 'Token not found');
    }

    api.options.headers['Authorization'] = 'Bearer $token';

    try {
      if (!project.isLiked) {
        _streamController.add(project.copyWith(
            isLiked: !project.isLiked, likeCount: project.likeCount + 1));
      } else {
        _streamController.add(project.copyWith(
            isLiked: !project.isLiked, likeCount: project.likeCount - 1));
      }

      await api.post('/project/${project.id}/like');
    } on DioException catch (e) {
      final message = getErrorMsg(e.type);
      _streamController.add(project);

      throw ProjectException(message: message);
    }
  }

  void dispose() {
    _streamController.close();
  }
}
