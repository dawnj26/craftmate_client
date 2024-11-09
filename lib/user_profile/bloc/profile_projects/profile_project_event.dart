part of 'profile_project_bloc.dart';

@freezed
class ProfileProjectEvent with _$ProfileProjectEvent {
  const factory ProfileProjectEvent.started() = _Started;
  const factory ProfileProjectEvent.refreshed() = _Refreshed;
  const factory ProfileProjectEvent.loadMoreProjects() = _LoadMoreProjects;
  const factory ProfileProjectEvent.categoryChanged(ProjectCategory category) =
      _CategoryChanged;
}
