part of 'completed_project_bloc.dart';

@freezed
class CompletedProjectEvent with _$CompletedProjectEvent {
  const factory CompletedProjectEvent.fetchProjects({
    required ProjectFilter filter,
  }) = _FetchProjects;
  const factory CompletedProjectEvent.refreshProjects() = _RefreshProjects;
  const factory CompletedProjectEvent.loadMoreProjects() = _LoadMoreProjects;
  const factory CompletedProjectEvent.filterChanged({
    required ProjectFilter filter,
  }) = _FilterChanged;
  const factory CompletedProjectEvent.sortChanged({
    required ProjectSort sort,
    required SortOrder order,
  }) = _SortChanged;

  const factory CompletedProjectEvent.deleteProjects({
    required List<int> projectIds,
  }) = _DeleteProjects;
  const factory CompletedProjectEvent.deleteProject({
    required Project project,
  }) = _DeleteProject;
  const factory CompletedProjectEvent.categoryChanged({
    required ProjectCategory category,
  }) = _CategoryChanged;
}
