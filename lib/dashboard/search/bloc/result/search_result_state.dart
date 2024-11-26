part of 'search_result_bloc.dart';

@freezed
class SearchResultState with _$SearchResultState {
  const factory SearchResultState.initial({
    @Default([]) List<Project> projects,
    @Default([]) List<ProjectCategory> categories,
    @Default([]) List<User> users,
  }) = Initial;
  const factory SearchResultState.loading({
    @Default([]) List<Project> projects,
    @Default([]) List<ProjectCategory> categories,
    @Default([]) List<User> users,
  }) = Loading;
  const factory SearchResultState.loaded({
    required List<Project> projects,
    required List<ProjectCategory> categories,
    required List<User> users,
  }) = Loaded;
  const factory SearchResultState.error({
    @Default([]) List<Project> projects,
    @Default([]) List<ProjectCategory> categories,
    @Default([]) List<User> users,
    required String message,
  }) = Error;
}
