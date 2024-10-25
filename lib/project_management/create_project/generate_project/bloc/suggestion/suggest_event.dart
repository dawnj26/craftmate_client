part of 'suggest_bloc.dart';

@freezed
class SuggestEvent with _$SuggestEvent {
  const factory SuggestEvent.started({
    required List<ProjectSuggestion> suggestions,
  }) = _Started;
  const factory SuggestEvent.regenerated() = _Regenerated;
}
