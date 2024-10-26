part of 'view_suggestion_bloc.dart';

@freezed
class ViewSuggestionEvent with _$ViewSuggestionEvent {
  const factory ViewSuggestionEvent.started({
    required ProjectSuggestion suggestion,
  }) = _Started;
  const factory ViewSuggestionEvent.suggestionSaved() = _SuggestionSaved;
}
