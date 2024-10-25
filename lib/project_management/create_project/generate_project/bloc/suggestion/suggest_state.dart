part of 'suggest_bloc.dart';

@freezed
class SuggestState with _$SuggestState {
  const factory SuggestState.initial({
    @Default([]) List<ProjectSuggestion> suggestions,
  }) = Initial;
  const factory SuggestState.loading({
    @Default([]) List<ProjectSuggestion> suggestions,
  }) = Loading;
  const factory SuggestState.loaded({
    @Default([]) List<ProjectSuggestion> suggestions,
  }) = Loaded;
  const factory SuggestState.regenerateSuccess({
    @Default([]) List<ProjectSuggestion> suggestions,
  }) = RegenerateSuccess;
  const factory SuggestState.error({
    @Default([]) List<ProjectSuggestion> suggestions,
    required String message,
  }) = Error;
}
