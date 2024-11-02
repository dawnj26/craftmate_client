part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState.initial({
    @Default([]) List<Project> projects,
  }) = Initial;
  const factory SearchState.loading({
    @Default([]) List<Project> projects,
  }) = Loading;
  const factory SearchState.loaded({
    required List<Project> projects,
  }) = Loaded;
  const factory SearchState.error({
    @Default([]) List<Project> projects,
    required String message,
  }) = Error;
}
