import 'package:config_repository/config_repository.dart';
import 'package:dio/dio.dart';
import 'package:project_repository/src/exceptions/project_exception.dart';
import 'package:project_repository/src/models/models.dart';

final class CommentApi {
  final ConfigRepository _config;

  const CommentApi({required ConfigRepository config}) : _config = config;

  Future<List<Comment>> getComments(int projectId) async {
    try {
      final api = await _config.apiWithAuthorization;

      final response = await api.get<Map<String, dynamic>>(
        '/project/$projectId/comments',
      );

      if (response.data == null) {
        throw ProjectException(message: 'Response is null');
      }
      final comments = response.data!['data']['comments'] as List<dynamic>;
      final commentsList = comments.map((e) => Comment.fromJson(e)).toList();

      return commentsList;
    } on DioException catch (e) {
      final message = _config.getErrorMsg(e.type);

      throw ProjectException(message: message);
    } on TokenException catch (e) {
      throw ProjectException(message: e.message);
    }
  }

  Future<void> likeComment(Comment comment, int projectId) async {
    try {
      final api = await _config.apiWithAuthorization;
      await api.post('/project/$projectId/comment/${comment.id}/like');
    } on DioException catch (e) {
      final message = _config.getErrorMsg(e.type);

      throw ProjectException(message: message);
    } on TokenException catch (e) {
      throw ProjectException(message: e.message);
    }
  }

  Future<Comment> replyComment(
    Comment comment,
    Project project,
    String commentText,
  ) async {
    try {
      final api = await _config.apiWithAuthorization;

      final response = await api.post<Map<String, dynamic>>(
        '/project/${project.id}/comment/${comment.id}/reply',
        data: {
          'comment': commentText,
        },
      );

      if (response.data == null) {
        throw ProjectException(message: 'Response is null');
      }

      return Comment.fromJson(response.data!['data']);
    } on DioException catch (e) {
      final message = _config.getErrorMsg(e.type);

      throw ProjectException(message: message);
    } on TokenException catch (e) {
      throw ProjectException(message: e.message);
    }
  }

  Future<void> deleteComment(
    Comment comment,
    Project project,
    int commentCount,
  ) async {
    try {
      final api = await _config.apiWithAuthorization;
      await api.delete('/project/comment/${comment.id}/delete');
    } on DioException catch (e) {
      final message = _config.getErrorMsg(e.type);

      throw ProjectException(message: message);
    } on TokenException catch (e) {
      throw ProjectException(message: e.message);
    }
  }

  Future<Comment> addComment(Project project, String comment) async {
    try {
      final api = await _config.apiWithAuthorization;

      final response = await api.post<Map<String, dynamic>>(
        '/project/${project.id}/comment/create',
        data: {
          'comment': comment,
        },
      );

      if (response.data == null) {
        throw ProjectException(message: 'Response is null');
      }

      return Comment.fromJson(response.data!['data']);
    } on DioException catch (e) {
      final message = _config.getErrorMsg(e.type);

      throw ProjectException(message: message);
    } on TokenException catch (e) {
      throw ProjectException(message: e.message);
    }
  }
}
