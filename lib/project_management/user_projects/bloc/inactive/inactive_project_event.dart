part of 'inactive_project_bloc.dart';

@freezed
class InactiveProjectEvent with _$InactiveProjectEvent {
  const factory InactiveProjectEvent.fetchProjects({
    required ProjectFilter filter,
  }) = _FetchProjects;
  const factory InactiveProjectEvent.refreshProjects() = _RefreshProjects;
  const factory InactiveProjectEvent.loadMoreProjects() = _LoadMoreProjects;
  const factory InactiveProjectEvent.filterChanged({
    required ProjectFilter filter,
  }) = _FilterChanged;
  const factory InactiveProjectEvent.sortChanged({
    required ProjectSort sort,
    required SortOrder order,
  }) = _SortChanged;

  const factory InactiveProjectEvent.deleteProjects({
    required List<int> projectIds,
  }) = _DeleteProjects;
  const factory InactiveProjectEvent.deleteProject({required Project project}) =
      _DeleteProject;
  const factory InactiveProjectEvent.categoryChanged({
    required ProjectCategory category,
  }) = _CategoryChanged;
}
