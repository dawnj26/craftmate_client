import 'dart:async';
import 'dart:convert';
import 'dart:isolate';

import 'package:config_repository/config_repository.dart';
import 'package:project_repository/src/exceptions/project_exception.dart';
import 'package:project_repository/src/models/models.dart';

final class ProjectApi {
  final ConfigRepository _config;

  const ProjectApi({required ConfigRepository config}) : _config = config;

  Future<List<ProjectCategory>> getProjectCategories() async {
    final projectCategories = _config.prefs.getString('projectCategories');

    if (projectCategories != null) {
      final json = await Isolate.run(() {
        final jsonData = jsonDecode(projectCategories);
        return jsonData;
      });

      final categories =
          (json as List).map((e) => ProjectCategory.fromJson(e)).toList();

      return categories;
    }

    try {
      final response = await _config.makeRequest<Map<String, dynamic>>(
        '/project/categories',
      );

      if (response.data == null) {
        throw ProjectException(message: 'Response is null');
      }

      final categories = (response.data!['data'] as List)
          .map((e) => ProjectCategory.fromJson(e))
          .toList();

      _config.prefs
          .setString('projectCategories', jsonEncode(response.data!['data']));

      return categories;
    } on RequestException catch (e) {
      throw ProjectException(message: e.message);
    } on TokenException catch (e) {
      throw ProjectException(message: e.message);
    }
  }

  Future<Pagination<Project>> getTrendingProjects(
      [String timeframe = 'today', String sortBy = 'views_count']) async {
    try {
      final response = await _config.makeRequest<Map<String, dynamic>>(
        '/projects/trending',
        queryParameters: {
          'timeframe': timeframe,
          'sort_by': sortBy,
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

  Future<Pagination<Project>> getFollowingProjects(
      [int? categoryId, bool refresh = false]) async {
    final followingProjects = _config.prefs.getString('followingProjects');

    if (followingProjects != null && !refresh) {
      final projects = Pagination.fromJson(
        jsonDecode(followingProjects),
        (dynamic item) => Project.fromJson(item),
      );

      return projects;
    }

    try {
      final response = await _config.makeRequest<Map<String, dynamic>>(
        '/projects/following',
        queryParameters:
            categoryId != null ? {'category_id': categoryId} : null,
        withAuthorization: true,
      );

      if (response.data == null) {
        throw ProjectException(message: 'Response is null');
      }

      final paginatedProjects = Pagination.fromJson(
        response.data!['data'],
        (dynamic item) => Project.fromJson(item),
      );

      _config.prefs.setString(
        'followingProjects',
        jsonEncode(response.data!['data']),
      );

      return paginatedProjects;
    } on RequestException catch (e) {
      throw ProjectException(message: e.message);
    } on TokenException catch (e) {
      throw ProjectException(message: e.message);
    }
  }

  Future<void> saveSuggestion(ProjectSuggestion suggestion) async {
    try {
      await _config.makeRequest<void>(
        '/project/suggestion/save',
        method: 'POST',
        data: {
          'title': suggestion.title,
          'description': suggestion.description,
          'materials': suggestion.materials.map((e) => e.name).toList(),
          'steps': suggestion.steps,
        },
        withAuthorization: true,
      );
    } on RequestException catch (e) {
      throw ProjectException(message: e.message);
    } on TokenException catch (e) {
      throw ProjectException(message: e.message);
    }
  }

  Future<int> forkProject(int materialId) async {
    try {
      final response = await _config.makeRequest<Map<String, dynamic>>(
        '/project/$materialId/fork',
        method: 'POST',
        withAuthorization: true,
      );

      if (response.data == null) {
        throw ProjectException(message: 'Response is null');
      }

      return response.data!['data']['projectId'];
    } on RequestException catch (e) {
      throw ProjectException(message: e.message);
    } on TokenException catch (e) {
      throw ProjectException(message: e.message);
    }
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
    int? categoryId,
  ) async {
    try {
      final path = filter.index != 0
          ? '/user/projects/${filter.index}'
          : '/user/projects';
      final params = <String, dynamic>{
        'sort_by': sort.value,
        'order': order.value,
      };

      if (categoryId != null) {
        params['category_id'] = categoryId;
      }

      final response = await _config.makeRequest<Map<String, dynamic>>(
        path,
        queryParameters: params,
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

  Future<Pagination<Project>> getLatestProjects(
      [int? categoryId, bool refresh = false]) async {
    final latestProjects = _config.prefs.getString('latestProjects');

    if (latestProjects != null && !refresh) {
      final projects = Pagination.fromJson(
        jsonDecode(latestProjects),
        (dynamic item) => Project.fromJson(item),
      );

      return projects;
    }

    try {
      final response = await _config.makeRequest<Map<String, dynamic>>(
        '/projects/latest',
        queryParameters:
            categoryId != null ? {'category_id': categoryId} : null,
        withAuthorization: true,
      );

      if (response.data == null) {
        throw ProjectException(message: 'Response is null');
      }

      final paginatedProjects = Pagination.fromJson(
        response.data!['data'],
        (dynamic item) => Project.fromJson(item),
      );

      _config.prefs.setString(
        'latestProjects',
        jsonEncode(response.data!['data']),
      );

      return paginatedProjects;
    } on RequestException catch (e) {
      throw ProjectException(message: e.message);
    } on TokenException catch (e) {
      throw ProjectException(message: e.message);
    }
  }

  Future<Project> tryCreateProject(
      String title, ProjectVisibility visibility, ProjectCategory category,
      [String? tags]) async {
    try {
      var data = <String, dynamic>{
        'title': title,
        'visibility': visibility.index + 1,
        'category': category.id,
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

  Future<void> updateSteps(
      Project project, List<List<dynamic>> newSteps) async {
    try {
      final json = newSteps.map((e) => jsonEncode(e)).toList();

      final response = await _config.makeRequest<Map<String, dynamic>>(
        '/project/${project.id}/edit/steps',
        method: 'POST',
        data: {'steps': jsonEncode(json)},
        withAuthorization: true,
      );

      if (response.data == null) {
        throw ProjectException(message: 'Response is null');
      }
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
    } on RequestException catch (e) {
      throw ProjectException(message: e.message);
    } on TokenException catch (e) {
      throw ProjectException(message: e.message);
    }
  }

  Future<void> tryToggleLikeById(Project project) async {
    try {
      await _config.makeRequest<void>(
        '/project/${project.id}/like',
        method: 'POST',
        withAuthorization: true,
      );
    } on RequestException catch (e) {
      throw ProjectException(message: e.message);
    } on TokenException catch (e) {
      throw ProjectException(message: e.message);
    }
  }

  Future<Project> updateProject(
      String title, Project project, ProjectCategory category,
      [String? tags]) async {
    try {
      var data = <String, dynamic>{
        'title': title,
        'category': category.id,
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
