part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState.initial({
    @Default([]) List<Project> projects,
    @Default(Pagination()) Pagination<Project> pagination,
  }) = _Initial;
  const factory SearchState.loading({
    @Default([]) List<Project> projects,
    @Default(Pagination()) Pagination<Project> pagination,
  }) = _Loading;
  const factory SearchState.loaded({
    required List<Project> projects,
    required Pagination<Project> pagination,
  }) = _Loaded;
  const factory SearchState.error({
    @Default([]) List<Project> projects,
    @Default(Pagination()) Pagination<Project> pagination,
    required String message,
  }) = _Error;
}
