part of 'ongoing_projects_bloc.dart';

@freezed
class OngoingProjectsEvent with _$OngoingProjectsEvent {
  const factory OngoingProjectsEvent.fetchProjects({
    required ProjectFilter filter,
  }) = _FetchProjects;
  const factory OngoingProjectsEvent.refreshProjects() = _RefreshProjects;
  const factory OngoingProjectsEvent.loadMoreProjects() = _LoadMoreProjects;
  const factory OngoingProjectsEvent.filterChanged({
    required ProjectFilter filter,
  }) = _FilterChanged;
  const factory OngoingProjectsEvent.sortChanged({
    required ProjectSort sort,
    required SortOrder order,
  }) = _SortChanged;

  const factory OngoingProjectsEvent.deleteProjects({
    required List<int> projectIds,
  }) = _DeleteProjects;
  const factory OngoingProjectsEvent.deleteProject({required Project project}) =
      _DeleteProject;
  const factory OngoingProjectsEvent.categoryChanged({
    required ProjectCategory category,
  }) = _CategoryChanged;
}
