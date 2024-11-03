part of 'search_result_bloc.dart';

@freezed
class SearchResultState with _$SearchResultState {
  const factory SearchResultState.initial({
    @Default([]) List<Project> projects,
    @Default([]) List<ProjectCategory> categories,
  }) = Initial;
  const factory SearchResultState.loading({
    @Default([]) List<Project> projects,
    @Default([]) List<ProjectCategory> categories,
  }) = Loading;
  const factory SearchResultState.loaded({
    required List<Project> projects,
    required List<ProjectCategory> categories,
  }) = Loaded;
  const factory SearchResultState.error({
    @Default([]) List<Project> projects,
    @Default([]) List<ProjectCategory> categories,
    required String message,
  }) = Error;
}
