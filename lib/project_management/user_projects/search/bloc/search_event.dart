part of 'search_bloc.dart';

@freezed
class ProjectSearchEvent with _$ProjectSearchEvent {
  const factory ProjectSearchEvent.searchProjects({
    required String query,
  }) = _SearchProjects;

  const factory ProjectSearchEvent.loadMoreProjects() = _LoadMoreProjects;
  const factory ProjectSearchEvent.clearSearch() = _ClearSearch;
}
