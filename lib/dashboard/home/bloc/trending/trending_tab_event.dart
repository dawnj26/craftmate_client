part of 'trending_tab_bloc.dart';

@freezed
class TrendingTabEvent with _$TrendingTabEvent {
  const factory TrendingTabEvent.started() = _Started;
  const factory TrendingTabEvent.refreshed() = _Refreshed;
  const factory TrendingTabEvent.loadMoreProjects() = _LoadMoreProjects;
  const factory TrendingTabEvent.filterChanged(MostFilter filter) =
      _FilterChanged;
}
