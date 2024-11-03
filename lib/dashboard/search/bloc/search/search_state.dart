part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState.initial({
    @Default([]) List<ProjectCategory> categories,
  }) = Initial;
  const factory SearchState.loading({
    @Default([]) List<ProjectCategory> categories,
  }) = Loading;
  const factory SearchState.loaded({
    required List<ProjectCategory> categories,
  }) = Loaded;
  const factory SearchState.error({
    @Default([]) List<ProjectCategory> categories,
    required String message,
  }) = Error;
}
