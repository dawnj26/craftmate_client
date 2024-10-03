part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.searchProjects({
    required String query,
  }) = _SearchProjects;

  const factory SearchEvent.loadMoreProjects() = _LoadMoreProjects;
  const factory SearchEvent.clearSearch() = _ClearSearch;
}
