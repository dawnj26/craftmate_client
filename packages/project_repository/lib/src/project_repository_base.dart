import 'dart:async';

import 'package:config_repository/config_repository.dart';
import 'package:project_repository/src/api/comment_api.dart';
import 'package:project_repository/src/api/project_api.dart';
import 'package:project_repository/src/api/upload_api.dart';
import 'package:project_repository/src/models/comment/comment.dart';
import 'package:project_repository/src/models/models.dart';
import 'package:project_repository/src/models/pagination/pagination.dart';
import 'package:project_repository/src/models/project/project.dart';

abstract class IProjectRepository {
  Future<Project> tryCreateProject(String title, ProjectVisibility visibility,
      [String? tags]);
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
  Future<String> uploadProjectImage(Project project, String imagePath);
  Future<String> uploadVideo(String videoPath);
  Future<List<Comment>> getComments(int projectId);
  Future<Comment> addComment(Project project, String comment);
  Future<void> likeComment(Comment comment, int projectId);
  Future<Project> updateProject(String title, Project project, [String? tags]);
  Future<Project> changeVisibilty(
      Project project, ProjectVisibility visibility);
  Future<void> deleteProject(Project project);
  Future<Comment> replyComment(
    Comment comment,
    Project project,
    String commentText,
  );
  Future<void> deleteComment(
      Comment comment, Project project, int commentCount);
  Future<Pagination<Project>> getLatestProjects();
  Future<Pagination<Project>> searchProjects(String query);
  Future<Pagination<Project>> getNextPage(String nextUrl);
  Future<Pagination<Project>> getCurrentUserProjects(ProjectFilter filter);
  Future<void> deleteProjects(List<int> projectIds);
}

class ProjectRepository implements IProjectRepository {
  final ProjectApi _projectApi;
  final UploadApi _uploadApi;
  final CommentApi _commentApi;

  ProjectRepository({
    required ConfigRepository config,
  })  : _projectApi = ProjectApi(config: config),
        _uploadApi = UploadApi(config: config),
        _commentApi = CommentApi(config: config);

  @override
  Future<Pagination<Project>> searchProjects(String query) {
    return _projectApi.searchProjects(query);
  }

  @override
  Future<void> deleteProjects(List<int> projectIds) {
    return _projectApi.deleteProjects(projectIds);
  }

  @override
  Future<Pagination<Project>> getCurrentUserProjects(
    ProjectFilter filter, [
    ProjectSort sort = ProjectSort.lastModified,
    SortOrder order = SortOrder.desc,
  ]) {
    return _projectApi.getCurrentUserProjects(filter, sort, order);
  }

  @override
  Future<Pagination<Project>> getNextPage(String nextUrl) async {
    return _projectApi.getNextPage(nextUrl);
  }

  @override
  Future<Pagination<Project>> getLatestProjects() {
    return _projectApi.getLatestProjects();
  }

  @override
  Future<void> deleteComment(
      Comment comment, Project project, int commentCount) async {
    await _commentApi.deleteComment(comment, project, commentCount);

    _projectApi.streamController
        .add(project.copyWith(commentCount: commentCount));
  }

  @override
  Future<Comment> replyComment(
    Comment comment,
    Project project,
    String commentText,
  ) async {
    return _commentApi.replyComment(comment, project, commentText);
  }

  @override
  Future<void> deleteProject(Project project) async {
    return _projectApi.deleteProject(project);
  }

  @override
  Future<Project> changeVisibilty(
      Project project, ProjectVisibility visibility) async {
    return _projectApi.changeVisibilty(project, visibility);
  }

  @override
  Future<Project> updateProject(String title, Project project,
      [String? tags]) async {
    return _projectApi.updateProject(title, project, tags);
  }

  @override
  Future<String> uploadProjectImage(Project project, String imagePath) async {
    return _uploadApi.uploadProjectImage(project, imagePath);
  }

  @override
  Future<void> likeComment(Comment comment, int projectId) async {
    return _commentApi.likeComment(comment, projectId);
  }

  @override
  Future<Comment> addComment(Project project, String comment) async {
    final response = await _commentApi.addComment(project, comment);
    _projectApi.streamController.add(project.copyWith(
      commentCount: project.commentCount + 1,
    ));
    return response;
  }

  @override
  Future<List<Comment>> getComments(int projectId) async {
    return _commentApi.getComments(projectId);
  }

  @override
  Future<Project> tryCreateProject(String title, ProjectVisibility visibility,
      [String? tags]) async {
    return _projectApi.tryCreateProject(title, visibility, tags);
  }

  @override
  Future<Project> tryGetProjectById(int id) async {
    return _projectApi.tryGetProjectById(id);
  }

  Stream<Project> getProjectStream(Project project) {
    return _projectApi.getProjectStream(project);
  }

  @override
  Future<void> tryToggleLikeById(Project project) async {
    return _projectApi.tryToggleLikeById(project);
  }

  void dispose() {
    if (!_projectApi.isStreamInitialized) {
      return;
    }

    _projectApi.streamController.close();
  }

  @override
  Future<void> updateDescription({
    required Project project,
    required List<dynamic> newDescription,
  }) async {
    return _projectApi.updateDescription(project, newDescription);
  }

  @override
  Future<void> updateSteps({
    required Project project,
    required List<dynamic> newSteps,
  }) async {
    return _projectApi.updateSteps(project, newSteps);
  }

  @override
  Future<String> uploadDocumentImage(String imagePath) async {
    return _uploadApi.upload(imagePath, 'image');
  }

  @override
  Future<String> uploadVideo(String videoPath) async {
    return _uploadApi.upload(videoPath, 'video');
  }
}
