import 'dart:async';

import 'package:config_repository/config_repository.dart';
import 'package:notification_repository/notification_repository.dart';
import 'package:project_repository/project_repository.dart';
import 'package:project_repository/src/api/comment_api.dart';
import 'package:project_repository/src/api/generate_api.dart';
import 'package:project_repository/src/api/project_api.dart';
import 'package:project_repository/src/api/upload_api.dart';
import 'package:project_repository/src/models/models.dart';
import 'package:user_repository/user_repository.dart';

abstract class IProjectRepository {
  Future<Project> tryCreateProject(
      String title, ProjectVisibility visibility, ProjectCategory category,
      [String? tags]);
  Future<Project> tryGetProjectById(int id);
  Future<void> tryToggleLikeById(Project project);
  Future<void> updateDescription({
    required Project project,
    required List<dynamic> newDescription,
  });
  Future<void> updateSteps({
    required Project project,
    required List<List<dynamic>> newSteps,
  });
  Future<String> uploadDocumentImage(String imagePath);
  Future<String> uploadProjectImage(Project project, String imagePath);
  Future<String> uploadVideo(String videoPath);
  Future<List<Comment>> getComments(int projectId);
  Future<Comment> addComment(Project project, String comment);
  Future<void> likeComment(Comment comment, int projectId);
  Future<Project> updateProject(
      String title, Project project, ProjectCategory category, bool forkable,
      [String? tags]);
  Future<Project> changeVisibilty(
      Project project, ProjectVisibility visibility);
  Future<void> deleteProject(Project project);
  Future<Comment> replyComment(
    Comment comment,
    Project project,
    String commentText,
  );
  Future<void> deleteComment(Comment comment, Project project);
  Future<Pagination<Project>> getLatestProjects(
      [int? categoryId, bool refresh = false]);
  Future<Pagination<Project>> searchProjects(String query);
  Future<Pagination<Project>> getNextPage(String nextUrl);
  Future<Pagination<Project>> getCurrentUserProjects(
    ProjectFilter filter, [
    ProjectSort sort = ProjectSort.lastModified,
    SortOrder order = SortOrder.desc,
    int? categoryId,
  ]);
  Future<void> deleteProjects(List<int> projectIds);
  Future<void> viewProjectById(int id);
  Future<int> forkProject(int projectId, User user, int ownerId);
  Future<List<ProjectSuggestion>> generateProjectSuggestion({
    required Prompt prompt,
  });
  Future<ProjectSuggestion> generateProject(
      Prompt prompt, ProjectSuggestion suggestion);
  Future<void> saveSuggestion(ProjectSuggestion suggestion);

  Future<Pagination<Project>> getFollowingProjects(
      [int? categoryId, bool refresh = false]);
  Future<Pagination<Project>> getTrendingProjects(
      [String timeframe = 'today', String sortBy = 'views_count']);
  Future<List<ProjectCategory>> getProjectCategories([bool refresh = false]);
  Future<Pagination<Project>> getProjectsByUserId(int id, [int? categoryId]);
  Future<Project> startProject(int id);
  Future<void> toggleStepComplete(int projectId, int stepId);
  Future<void> toggleAllStepsComplete(int projectId);
  Future<Pagination<Project>> getCurrentUserOngoingProjects(
    ProjectFilter filter, [
    ProjectSort sort = ProjectSort.lastModified,
    SortOrder order = SortOrder.desc,
    int? categoryId,
  ]);
  Future<Pagination<Project>> getCurrentUserCompletedProjects(
    ProjectFilter filter, [
    ProjectSort sort = ProjectSort.lastModified,
    SortOrder order = SortOrder.desc,
    int? categoryId,
  ]);
  Future<Pagination<Project>> getCurrentUserInactiveProjects(
    ProjectFilter filter, [
    ProjectSort sort = ProjectSort.lastModified,
    SortOrder order = SortOrder.desc,
    int? categoryId,
  ]);
  Future<Project> finishProject(int id);
  Future<String> shareProject(int id);
}

class ProjectRepository implements IProjectRepository {
  final ProjectApi _projectApi;
  final UploadApi _uploadApi;
  final CommentApi _commentApi;
  final GenerateApi _generateApi;

  ProjectRepository({
    required ConfigRepository config,
    required NotificationRepository notificationRepository,
  })  : _projectApi = ProjectApi(config: config, notif: notificationRepository),
        _uploadApi = UploadApi(config: config),
        _commentApi = CommentApi(config: config),
        _generateApi = GenerateApi(config: config);

  @override
  Future<Pagination<Project>> getCurrentUserCompletedProjects(
      ProjectFilter filter,
      [ProjectSort sort = ProjectSort.lastModified,
      SortOrder order = SortOrder.desc,
      int? categoryId]) {
    return _projectApi.getCurrentUserCompletedProjects(
        filter, sort, order, categoryId);
  }

  @override
  Future<Pagination<Project>> getCurrentUserInactiveProjects(
      ProjectFilter filter,
      [ProjectSort sort = ProjectSort.lastModified,
      SortOrder order = SortOrder.desc,
      int? categoryId]) {
    return _projectApi.getCurrentUserInactiveProjects(
        filter, sort, order, categoryId);
  }

  @override
  Future<Project> finishProject(int id) async {
    return _projectApi.finishProject(id);
  }

  @override
  Future<Pagination<Project>> getCurrentUserOngoingProjects(
    ProjectFilter filter, [
    ProjectSort sort = ProjectSort.lastModified,
    SortOrder order = SortOrder.desc,
    int? categoryId,
  ]) {
    return _projectApi.getCurrentUserOngoingProjects(
        filter, sort, order, categoryId);
  }

  @override
  Future<void> toggleAllStepsComplete(int projectId) {
    return _projectApi.toggleAllStepsComplete(projectId);
  }

  @override
  Future<void> toggleStepComplete(int projectId, int stepId) async {
    return _projectApi.toggleStepComplete(projectId, stepId);
  }

  @override
  Future<Project> startProject(int id) async {
    return _projectApi.startProject(id);
  }

  @override
  Future<Pagination<Project>> getProjectsByUserId(int id, [int? categoryId]) {
    return _projectApi.getProjectsByUserId(id, categoryId);
  }

  @override
  Future<List<ProjectCategory>> getProjectCategories([bool refresh = false]) {
    return _projectApi.getProjectCategories(refresh);
  }

  @override
  Future<Pagination<Project>> getTrendingProjects(
      [String timeframe = 'today', String sortBy = 'views_count']) {
    return _projectApi.getTrendingProjects(timeframe, sortBy);
  }

  @override
  Future<Pagination<Project>> getFollowingProjects(
      [int? categoryId, bool refresh = false]) {
    return _projectApi.getFollowingProjects(categoryId, refresh);
  }

  @override
  Future<void> saveSuggestion(ProjectSuggestion suggestion) async {
    return _projectApi.saveSuggestion(suggestion);
  }

  @override
  Future<ProjectSuggestion> generateProject(
      Prompt prompt, ProjectSuggestion suggestion) {
    return _generateApi.generateProject(prompt, suggestion);
  }

  @override
  Future<List<ProjectSuggestion>> generateProjectSuggestion(
      {required Prompt prompt}) async {
    return _generateApi.generateProjectSuggestion(
      prompt: prompt,
    );
  }

  @override
  Future<int> forkProject(int projectId, User user, int ownerId,
      [bool start = false]) {
    return _projectApi.forkProject(projectId, user, ownerId, start);
  }

  @override
  Future<void> viewProjectById(int id) {
    return _projectApi.viewProjectById(id);
  }

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
    int? categoryId,
  ]) {
    return _projectApi.getCurrentUserProjects(filter, sort, order, categoryId);
  }

  @override
  Future<Pagination<Project>> getNextPage(String nextUrl) async {
    return _projectApi.getNextPage(nextUrl);
  }

  @override
  Future<Pagination<Project>> getLatestProjects(
      [int? categoryId, bool refresh = false]) {
    return _projectApi.getLatestProjects(categoryId, refresh);
  }

  @override
  Future<void> deleteComment(Comment comment, Project project) async {
    await _commentApi.deleteComment(comment, project);
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
  Future<Project> updateProject(
      String title, Project project, ProjectCategory category, bool forkable,
      [String? tags]) async {
    return _projectApi.updateProject(title, project, category, forkable, tags);
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

    return response;
  }

  @override
  Future<List<Comment>> getComments(int projectId) async {
    return _commentApi.getComments(projectId);
  }

  @override
  Future<Project> tryCreateProject(
      String title, ProjectVisibility visibility, ProjectCategory category,
      [String? tags]) async {
    return _projectApi.tryCreateProject(title, visibility, category, tags);
  }

  @override
  Future<Project> tryGetProjectById(int id) async {
    return _projectApi.tryGetProjectById(id);
  }

  @override
  Future<void> tryToggleLikeById(Project project) async {
    return _projectApi.tryToggleLikeById(project);
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
    required List<List<dynamic>> newSteps,
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

  @override
  Future<String> shareProject(int id) async {
    return _projectApi.shareProject(id);
  }
}
