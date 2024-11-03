part of 'user_project_bloc.dart';

@freezed
class UserProjectEvent with _$UserProjectEvent {
  const factory UserProjectEvent.fetchProjects({
    required ProjectFilter filter,
  }) = _FetchProjects;
  const factory UserProjectEvent.refreshProjects() = _RefreshProjects;
  const factory UserProjectEvent.loadMoreProjects() = _LoadMoreProjects;
  const factory UserProjectEvent.filterChanged({
    required ProjectFilter filter,
  }) = _FilterChanged;
  const factory UserProjectEvent.sortChanged({
    required ProjectSort sort,
    required SortOrder order,
  }) = _SortChanged;

  const factory UserProjectEvent.deleteProjects({
    required List<int> projectIds,
  }) = _DeleteProjects;
  const factory UserProjectEvent.deleteProject({required Project project}) =
      _DeleteProject;
  const factory UserProjectEvent.categoryChanged({
    required ProjectCategory category,
  }) = _CategoryChanged;
}
