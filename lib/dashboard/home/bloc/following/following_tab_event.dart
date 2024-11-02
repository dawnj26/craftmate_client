part of 'following_tab_bloc.dart';

@freezed
class FollowingTabEvent with _$FollowingTabEvent {
  const factory FollowingTabEvent.started() = _Started;
  const factory FollowingTabEvent.refreshed() = _Refreshed;
  const factory FollowingTabEvent.loadMoreProjects() = _LoadMoreProjects;
  const factory FollowingTabEvent.categoryChanged(ProjectCategory category) =
      _CategoryChanged;
}
