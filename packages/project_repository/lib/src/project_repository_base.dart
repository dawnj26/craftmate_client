import 'package:config_repository/config_repository.dart';
import 'package:dio/dio.dart';
import 'package:project_repository/src/exceptions/project_exception.dart';

abstract class IProjectRepository {
  Future<void> tryCreateProject(String title, bool isPulic, [String? tags]);
}

class ProjectRepository implements IProjectRepository {
  final ConfigRepository _config;

  const ProjectRepository({
    required ConfigRepository config,
  }) : _config = config;

  @override
  Future<void> tryCreateProject(String title, bool isPulic,
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
      await api.post(
        '/project/create',
        data: data,
      );
    } on DioException catch (e) {
      var message = 'Login failed';

      if (e.response != null) {
        // null checks if response provides error
        final metadata = e.response!.data['metadata'] ?? {};
        message = metadata['message'] != null
            ? metadata['message'].toString()
            : message;
      }

      throw ProjectException(message: message);
    }
  }
}
