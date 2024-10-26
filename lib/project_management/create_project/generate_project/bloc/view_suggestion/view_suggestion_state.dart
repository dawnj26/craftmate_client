part of 'view_suggestion_bloc.dart';

@freezed
class ViewSuggestionState with _$ViewSuggestionState {
  const factory ViewSuggestionState.initial({
    @Default(ProjectSuggestion()) ProjectSuggestion pSuggestion,
  }) = Initial;
  const factory ViewSuggestionState.loading({
    @Default(ProjectSuggestion()) ProjectSuggestion pSuggestion,
  }) = Loading;
  const factory ViewSuggestionState.loaded({
    @Default(ProjectSuggestion()) ProjectSuggestion pSuggestion,
  }) = Loaded;
  const factory ViewSuggestionState.saving({
    @Default(ProjectSuggestion()) ProjectSuggestion pSuggestion,
  }) = Saving;
  const factory ViewSuggestionState.saved({
    @Default(ProjectSuggestion()) ProjectSuggestion pSuggestion,
  }) = Saved;
  const factory ViewSuggestionState.error({
    @Default(ProjectSuggestion()) ProjectSuggestion pSuggestion,
    required String message,
  }) = Error;
}
