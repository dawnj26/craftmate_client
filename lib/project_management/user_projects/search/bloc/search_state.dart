part of 'search_bloc.dart';

@freezed
class ProjectSearchState with _$ProjectSearchState {
  const factory ProjectSearchState.initial({
    @Default([]) List<Project> projects,
    @Default(Pagination()) Pagination<Project> pagination,
  }) = Initial;
  const factory ProjectSearchState.loading({
    @Default([]) List<Project> projects,
    @Default(Pagination()) Pagination<Project> pagination,
  }) = Loading;
  const factory ProjectSearchState.loaded({
    required List<Project> projects,
    required Pagination<Project> pagination,
  }) = Loaded;
  const factory ProjectSearchState.error({
    @Default([]) List<Project> projects,
    @Default(Pagination()) Pagination<Project> pagination,
    required String message,
  }) = Error;
}
