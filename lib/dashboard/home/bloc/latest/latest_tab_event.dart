part of 'latest_tab_bloc.dart';

@freezed
class LatestTabEvent with _$LatestTabEvent {
  const factory LatestTabEvent.started() = _Started;
  const factory LatestTabEvent.refreshed() = _Refreshed;
  const factory LatestTabEvent.loadMoreProjects() = _LoadMoreProjects;
  const factory LatestTabEvent.categoryChanged(ProjectCategory category) =
      _CategoryChanged;
}
