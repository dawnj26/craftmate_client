import 'dart:async';
import 'dart:convert';

import 'package:config_repository/config_repository.dart';
import 'package:project_repository/src/exceptions/project_exception.dart';
import 'package:project_repository/src/models/models.dart';

final class ProjectApi {
  final ConfigRepository _config;
  late final StreamController<Project> _streamController;
  bool isStreamInitialized = false;

  ProjectApi({required ConfigRepository config}) : _config = config;

  StreamController<Project> get streamController => _streamController;

  Stream<Project> getProjectStream(Project project) {
    if (!isStreamInitialized) {
      _streamController = StreamController<Project>.broadcast();
      isStreamInitialized = true;

      _streamController.add(project);
    }

    return _streamController.stream;
  }

  Future<void> viewProjectById(int id) async {
    try {
      await _config.makeRequest<void>(
        '/project/$id/view',
        method: 'POST',
        withAuthorization: true,
      );
    } on RequestException catch (e) {
      throw ProjectException(message: e.message);
    } on TokenException catch (e) {
      throw ProjectException(message: e.message);
    }
  }

  Future<Pagination<Project>> searchProjects(String query) async {
    try {
      final response = await _config.makeRequest<Map<String, dynamic>>(
        '/user/projects/',
        queryParameters: {'q': query},
        withAuthorization: true,
      );

      if (response.data == null) {
        throw ProjectException(message: 'Response is null');
      }

      final paginatedProjects = Pagination.fromJson(
        response.data!['data'],
        (dynamic item) => Project.fromJson(item),
      );

      return paginatedProjects;
    } on RequestException catch (e) {
      throw ProjectException(message: e.message);
    } on TokenException catch (e) {
      throw ProjectException(message: e.message);
    }
  }

  Future<void> deleteProjects(List<int> projectIds) async {
    try {
      await _config.makeRequest<void>(
        '/user/projects/delete',
        method: 'DELETE',
        data: jsonEncode({'project_ids': projectIds}),
        withAuthorization: true,
      );
    } on RequestException catch (e) {
      throw ProjectException(message: e.message);
    } on TokenException catch (e) {
      throw ProjectException(message: e.message);
    }
  }

  Future<Pagination<Project>> getCurrentUserProjects(
    ProjectFilter filter,
    ProjectSort sort,
    SortOrder order,
  ) async {
    try {
      final path = filter.index != 0
          ? '/user/projects/${filter.index}'
          : '/user/projects';

      final response = await _config.makeRequest<Map<String, dynamic>>(
        path,
        queryParameters: {
          'sort_by': sort.value,
          'order': order.value,
        },
        withAuthorization: true,
      );

      if (response.data == null) {
        throw ProjectException(message: 'Response is null');
      }

      final paginatedProjects = Pagination.fromJson(
        response.data!['data'],
        (dynamic item) => Project.fromJson(item),
      );

      return paginatedProjects;
    } on RequestException catch (e) {
      throw ProjectException(message: e.message);
    } on TokenException catch (e) {
      throw ProjectException(message: e.message);
    }
  }

  Future<Pagination<Project>> getNextPage(String nextUrl) async {
    try {
      final response = await _config.makeRequest<Map<String, dynamic>>(
        nextUrl,
        withAuthorization: true,
        token: await _config.storage.read(key: 'token'),
      );

      if (response.data == null) {
        throw ProjectException(message: 'Response is null');
      }

      final paginatedProjects = Pagination.fromJson(
        response.data!['data'],
        (dynamic item) => Project.fromJson(item),
      );

      return paginatedProjects;
    } on RequestException catch (e) {
      throw ProjectException(message: e.message);
    } on TokenException catch (e) {
      throw ProjectException(message: e.message);
    }
  }

  Future<Pagination<Project>> getLatestProjects() async {
    try {
      final response = await _config.makeRequest<Map<String, dynamic>>(
        '/projects/latest',
        withAuthorization: true,
      );

      if (response.data == null) {
        throw ProjectException(message: 'Response is null');
      }

      final paginatedProjects = Pagination.fromJson(
        response.data!['data'],
        (dynamic item) => Project.fromJson(item),
      );

      return paginatedProjects;
    } on RequestException catch (e) {
      throw ProjectException(message: e.message);
    } on TokenException catch (e) {
      throw ProjectException(message: e.message);
    }
  }

  Future<Project> tryCreateProject(String title, ProjectVisibility visibility,
      [String? tags]) async {
    try {
      var data = <String, dynamic>{
        'title': title,
        'visibility': visibility.index + 1,
      };

      if (tags != null) {
        data['tags'] = tags;
      }

      final response = await _config.makeRequest<Map<String, dynamic>>(
        '/project/create',
        method: 'POST',
        data: data,
        withAuthorization: true,
      );

      return Project.fromJson(response.data!['data']);
    } on RequestException catch (e) {
      throw ProjectException(message: e.message);
    } on TokenException catch (e) {
      throw ProjectException(message: e.message);
    }
  }

  Future<Project> tryGetProjectById(int id) async {
    try {
      final response = await _config.makeRequest<Map<String, dynamic>>(
        '/project/$id',
        withAuthorization: true,
      );

      if (response.data == null) {
        throw ProjectException(message: 'Response is null');
      }

      final project = Project.fromJson(response.data!['data']);

      return project;
    } on RequestException catch (e) {
      throw ProjectException(message: e.message);
    }
  }

  Future<void> updateSteps(Project project, List<dynamic> newSteps) async {
    try {
      await _config.makeRequest<void>(
        '/project/${project.id}/edit/steps',
        method: 'POST',
        data: {'steps': jsonEncode(newSteps)},
        withAuthorization: true,
      );

      _streamController.add(project.copyWith(steps: newSteps));
    } on RequestException catch (e) {
      throw ProjectException(message: e.message);
    } on TokenException catch (e) {
      throw ProjectException(message: e.message);
    }
  }

  Future<void> updateDescription(
      Project project, List<dynamic> newDescription) async {
    try {
      await _config.makeRequest<void>(
        '/project/${project.id}/edit/description',
        method: 'POST',
        data: {'description': jsonEncode(newDescription)},
        withAuthorization: true,
      );

      _streamController.add(project.copyWith(description: newDescription));
    } on RequestException catch (e) {
      throw ProjectException(message: e.message);
    } on TokenException catch (e) {
      throw ProjectException(message: e.message);
    }
  }

  Future<void> tryToggleLikeById(Project project) async {
    try {
      if (!project.isLiked) {
        _streamController.add(project.copyWith(
            isLiked: !project.isLiked, likeCount: project.likeCount + 1));
      } else {
        _streamController.add(project.copyWith(
            isLiked: !project.isLiked, likeCount: project.likeCount - 1));
      }

      await _config.makeRequest<void>(
        '/project/${project.id}/like',
        method: 'POST',
        withAuthorization: true,
      );
    } on RequestException catch (e) {
      _streamController.add(project);
      throw ProjectException(message: e.message);
    } on TokenException catch (e) {
      throw ProjectException(message: e.message);
    }
  }

  Future<Project> updateProject(String title, Project project,
      [String? tags]) async {
    try {
      var data = <String, dynamic>{
        'title': title,
      };

      if (tags != null) {
        data['tags'] = tags;
      }

      final response = await _config.makeRequest<Map<String, dynamic>>(
        '/project/${project.id}/edit',
        method: 'POST',
        data: data,
        withAuthorization: true,
      );

      if (response.data == null) {
        throw ProjectException(message: 'Response is null');
      }

      final updatedProject = Project.fromJson(response.data!['data']);
      _streamController.add(updatedProject);

      return updatedProject;
    } on RequestException catch (e) {
      _config.logger.info(e.message);
      throw ProjectException(message: e.message);
    } on TokenException catch (e) {
      throw ProjectException(message: e.message);
    }
  }

  Future<Project> changeVisibilty(
    Project project,
    ProjectVisibility visibility,
  ) async {
    try {
      final response = await _config.makeRequest<Map<String, dynamic>>(
        '/project/${project.id}/edit/visibility',
        method: 'POST',
        data: {'visibility': visibility.index + 1},
        withAuthorization: true,
      );

      if (response.data == null) {
        throw ProjectException(message: 'Response is null');
      }

      final updatedProject = project.copyWith(visibility: visibility);

      _streamController.add(updatedProject);
      return updatedProject;
    } on RequestException catch (e) {
      _config.logger.info(e.message);
      throw ProjectException(message: e.message);
    } on TokenException catch (e) {
      throw ProjectException(message: e.message);
    }
  }

  Future<void> deleteProject(Project project) async {
    try {
      await _config.makeRequest<void>(
        '/project/${project.id}/delete',
        method: 'DELETE',
        withAuthorization: true,
      );
    } on RequestException catch (e) {
      _config.logger.info(e.message);
      throw ProjectException(message: e.message);
    } on TokenException catch (e) {
      throw ProjectException(message: e.message);
    }
  }
}
