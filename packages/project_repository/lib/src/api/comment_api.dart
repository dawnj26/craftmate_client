import 'package:config_repository/config_repository.dart';
import 'package:project_repository/src/exceptions/project_exception.dart';
import 'package:project_repository/src/models/models.dart';

final class CommentApi {
  final ConfigRepository _config;

  const CommentApi({required ConfigRepository config}) : _config = config;

  Future<List<Comment>> getComments(int projectId) async {
    try {
      final response = await _config.makeRequest<Map<String, dynamic>>(
        '/project/$projectId/comments',
        withAuthorization: true,
      );

      if (response.data == null) {
        throw ProjectException(message: 'Response is null');
      }
      final comments = response.data!['data']['comments'] as List<dynamic>;
      final commentsList = comments.map((e) => Comment.fromJson(e)).toList();

      return commentsList;
    } on RequestException catch (e) {
      throw ProjectException(message: e.message);
    } on TokenException catch (e) {
      throw ProjectException(message: e.message);
    }
  }

  Future<void> likeComment(Comment comment, int projectId) async {
    try {
      await _config.makeRequest(
        '/project/$projectId/comment/${comment.id}/like',
        method: 'POST',
        withAuthorization: true,
      );
    } on RequestException catch (e) {
      throw ProjectException(message: e.message);
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
      final response = await _config.makeRequest<Map<String, dynamic>>(
        '/project/${project.id}/comment/${comment.id}/reply',
        method: 'POST',
        data: {
          'comment': commentText,
        },
        withAuthorization: true,
      );

      if (response.data == null) {
        throw ProjectException(message: 'Response is null');
      }

      return Comment.fromJson(response.data!['data']);
    } on RequestException catch (e) {
      throw ProjectException(message: e.message);
    } on TokenException catch (e) {
      throw ProjectException(message: e.message);
    }
  }

  Future<void> deleteComment(
    Comment comment,
    Project project,
  ) async {
    try {
      await _config.makeRequest(
        '/project/comment/${comment.id}/delete',
        method: 'DELETE',
        withAuthorization: true,
      );
    } on RequestException catch (e) {
      throw ProjectException(message: e.message);
    } on TokenException catch (e) {
      throw ProjectException(message: e.message);
    }
  }

  Future<Comment> addComment(Project project, String comment) async {
    try {
      final response = await _config.makeRequest<Map<String, dynamic>>(
        '/project/${project.id}/comment/create',
        method: 'POST',
        data: {
          'comment': comment,
        },
        withAuthorization: true,
      );

      if (response.data == null) {
        throw ProjectException(message: 'Response is null');
      }

      return Comment.fromJson(response.data!['data']);
    } on RequestException catch (e) {
      throw ProjectException(message: e.message);
    } on TokenException catch (e) {
      throw ProjectException(message: e.message);
    }
  }
}
