import 'dart:async';
import 'dart:convert';

import 'package:config_repository/config_repository.dart';
import 'package:dio/dio.dart';
import 'package:project_repository/src/exceptions/project_exception.dart';
import 'package:project_repository/src/models/models.dart';

final class ProjectApi {
  final ConfigRepository _config;
  late final StreamController<Project> _streamController;
  bool isStreamInitialized = false;

  ProjectApi({required ConfigRepository config}) : _config = config;

  StreamController<Project> get streamController => _streamController;

  Future<Pagination<Project>> getNextPage(String nextUrl) async {
    try {
      final api = _config.api;
      api.options.baseUrl = nextUrl;
      final response = await api.get<Map<String, dynamic>>('');

      if (response.data == null) {
        throw ProjectException(message: 'Response is null');
      }

      final paginatedProjects = Pagination.fromJson(
        response.data!['data'],
        (dynamic item) => Project.fromJson(item),
      );

      return paginatedProjects;
    } on DioException catch (e) {
      final message = _config.getErrorMsg(e.type);

      throw ProjectException(message: message);
    } on TokenException catch (e) {
      throw ProjectException(message: e.message);
    }
  }

  Future<Pagination<Project>> getLatestProjects() async {
    try {
      final api = await _config.apiWithAuthorization;
      final response = await api.get<Map<String, dynamic>>('/projects/latest');

      if (response.data == null) {
        throw ProjectException(message: 'Response is null');
      }

      final paginatedProjects = Pagination.fromJson(
        response.data!['data'],
        (dynamic item) => Project.fromJson(item),
      );

      return paginatedProjects;
    } on DioException catch (e) {
      final message = _config.getErrorMsg(e.type);

      throw ProjectException(message: message);
    } on TokenException catch (e) {
      throw ProjectException(message: e.message);
    }
  }

  void _initController() {
    _streamController = StreamController<Project>.broadcast();
    isStreamInitialized = true;
  }

  Stream<Project> getProjectStream(Project project) {
    if (!isStreamInitialized) {
      _initController();
      _streamController.add(project);
    }

    return _streamController.stream;
  }

  Future<Project> tryCreateProject(String title, ProjectVisibility visibility,
      [String? tags]) async {
    try {
      final api = await _config.apiWithAuthorization;

      var data = <String, dynamic>{
        'title': title,
        'visibility': visibility.index + 1,
      };

      if (tags != null) {
        data['tags'] = tags;
      }
      final response = await api.post<Map<String, dynamic>>(
        '/project/create',
        data: data,
      );

      return Project.fromJson(response.data!['data']);
    } on DioException catch (e) {
      final message = _config.getErrorMsg(e.type);

      throw ProjectException(message: message);
    } on TokenException catch (e) {
      throw ProjectException(message: e.message);
    }
  }

  Future<Project> tryGetProjectById(int id) async {
    final api = _config.api;
    final token = await _config.storage.read(key: 'token');

    if (token != null) {
      api.options.headers['Authorization'] = 'Bearer $token';
    }

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
      final message = _config.getErrorMsg(e.type);

      throw ProjectException(message: message);
    }
  }

  Future<void> updateSteps(Project project, List<dynamic> newSteps) async {
    try {
      final api = await _config.apiWithAuthorization;
      await api.post('/project/${project.id}/edit/steps', data: {
        'steps': jsonEncode(newSteps),
      });

      _streamController.add(project.copyWith(steps: newSteps));
    } on DioException catch (e) {
      final message = _config.getErrorMsg(e.type);

      throw ProjectException(message: message);
    } on TokenException catch (e) {
      throw ProjectException(message: e.message);
    }
  }

  Future<void> updateDescription(
      Project project, List<dynamic> newDescription) async {
    try {
      final api = await _config.apiWithAuthorization;
      await api.post('/project/${project.id}/edit/description', data: {
        'description': jsonEncode(newDescription),
      });

      _streamController.add(project.copyWith(description: newDescription));
    } on DioException catch (e) {
      final message = _config.getErrorMsg(e.type);

      throw ProjectException(message: message);
    } on TokenException catch (e) {
      throw ProjectException(message: e.message);
    }
  }

  Future<void> tryToggleLikeById(Project project) async {
    try {
      final api = await _config.apiWithAuthorization;
      if (!project.isLiked) {
        _streamController.add(project.copyWith(
            isLiked: !project.isLiked, likeCount: project.likeCount + 1));
      } else {
        _streamController.add(project.copyWith(
            isLiked: !project.isLiked, likeCount: project.likeCount - 1));
      }

      await api.post('/project/${project.id}/like');
    } on DioException catch (e) {
      final message = _config.getErrorMsg(e.type);
      _streamController.add(project);

      throw ProjectException(message: message);
    } on TokenException catch (e) {
      throw ProjectException(message: e.message);
    }
  }

  Future<Project> updateProject(String title, Project project,
      [String? tags]) async {
    try {
      final api = await _config.apiWithAuthorization;

      var data = <String, dynamic>{
        'title': title,
      };

      if (tags != null) {
        data['tags'] = tags;
      }
      final response = await api.post<Map<String, dynamic>>(
        '/project/${project.id}/edit',
        data: data,
      );

      if (response.data == null) {
        throw ProjectException(message: 'Response is null');
      }

      final updatedProject = Project.fromJson(response.data!['data']);
      _streamController.add(updatedProject);

      return updatedProject;
    } on DioException catch (e) {
      final message = _config.getErrorMsg(e.type);
      _config.logger.info(e.response?.statusCode);

      throw ProjectException(message: message);
    } on TokenException catch (e) {
      throw ProjectException(message: e.message);
    }
  }

  Future<Project> changeVisibilty(
    Project project,
    ProjectVisibility visibility,
  ) async {
    try {
      final api = await _config.apiWithAuthorization;
      final response = await api.post<Map<String, dynamic>>(
        '/project/${project.id}/edit/visibility',
        data: {
          'visibility': visibility.index + 1,
        },
      );

      if (response.data == null) {
        throw ProjectException(message: 'Response is null');
      }

      final updatedProject = project.copyWith(visibility: visibility);

      _streamController.add(updatedProject);
      return updatedProject;
    } on DioException catch (e) {
      final message = _config.getErrorMsg(e.type);
      _config.logger.info(e.response?.statusCode);

      throw ProjectException(message: message);
    } on TokenException catch (e) {
      throw ProjectException(message: e.message);
    }
  }

  Future<void> deleteProject(Project project) async {
    try {
      final api = await _config.apiWithAuthorization;
      await api.delete('/project/${project.id}/delete');
    } on DioException catch (e) {
      final message = _config.getErrorMsg(e.type);
      _config.logger.info(e.response?.statusCode);

      throw ProjectException(message: message);
    } on TokenException catch (e) {
      throw ProjectException(message: e.message);
    }
  }
}
