import 'dart:async';
import 'dart:convert';

import 'package:config_repository/config_repository.dart';
import 'package:dio/dio.dart';
import 'package:project_repository/src/exceptions/project_exception.dart';
import 'package:project_repository/src/models/project.dart';

abstract class IProjectRepository {
  Future<Project> tryCreateProject(String title, bool isPulic, [String? tags]);
  Future<Project> tryGetProjectById(int id);
  Future<void> tryToggleLikeById(Project project);
  Future<void> updateDescription({
    required Project project,
    required List<dynamic> newDescription,
  });
  Future<void> updateSteps({
    required Project project,
    required List<dynamic> newSteps,
  });
  Future<String> uploadDocumentImage(String imagePath);
}

class ProjectRepository implements IProjectRepository {
  final ConfigRepository _config;
  late final StreamController<Project> _streamController;
  bool isStreamInitialized = false;

  ProjectRepository({
    required ConfigRepository config,
  }) : _config = config;

  @override
  Future<Project> tryCreateProject(String title, bool isPulic,
      [String? tags]) async {
    try {
      final api = await _config.apiWithAuthorization;

      var data = <String, dynamic>{
        'title': title,
        'is_public': isPulic,
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
      final message = getErrorMsg(e.type);

      throw ProjectException(message: message);
    } on TokenException catch (e) {
      throw ProjectException(message: e.message);
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
      final message = getErrorMsg(e.type);

      throw ProjectException(message: message);
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

  @override
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
      final message = getErrorMsg(e.type);
      _streamController.add(project);

      throw ProjectException(message: message);
    } on TokenException catch (e) {
      throw ProjectException(message: e.message);
    }
  }

  void dispose() {
    if (!isStreamInitialized) {
      return;
    }

    _streamController.close();
  }

  @override
  Future<void> updateDescription({
    required Project project,
    required List<dynamic> newDescription,
  }) async {
    try {
      final api = await _config.apiWithAuthorization;
      await api.post('/project/${project.id}/edit/description', data: {
        'description': jsonEncode(newDescription),
      });

      _streamController.add(project.copyWith(description: newDescription));
    } on DioException catch (e) {
      final message = getErrorMsg(e.type);

      throw ProjectException(message: message);
    } on TokenException catch (e) {
      throw ProjectException(message: e.message);
    }
  }

  @override
  Future<void> updateSteps({
    required Project project,
    required List<dynamic> newSteps,
  }) async {
    try {
      final api = await _config.apiWithAuthorization;
      await api.post('/project/${project.id}/edit/steps', data: {
        'steps': jsonEncode(newSteps),
      });

      _streamController.add(project.copyWith(steps: newSteps));
    } on DioException catch (e) {
      final message = getErrorMsg(e.type);

      throw ProjectException(message: message);
    } on TokenException catch (e) {
      throw ProjectException(message: e.message);
    }
  }

  @override
  Future<String> uploadDocumentImage(String imagePath) async {
    final filename = imagePath.split('/').last;

    try {
      final api = await _config.apiWithAuthorization;
      final formData = FormData.fromMap({
        'image': await MultipartFile.fromFile(imagePath, filename: filename),
      });

      final response = await api
          .post<Map<String, dynamic>>('/project/image/upload', data: formData);

      if (response.data == null) {
        throw ProjectException(message: 'No response');
      }

      return response.data!['data']['image_url'];
    } on TokenException catch (e) {
      throw ProjectException(message: e.message);
    } on UnsupportedError catch (_) {
      throw ProjectException(message: 'Unsupported file');
    } on DioException catch (e) {
      final message = getErrorMsg(e.type);

      throw ProjectException(message: message);
    }
  }
}
