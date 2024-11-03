import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_suggestion.freezed.dart';
part 'search_suggestion.g.dart';

@freezed
class SearchSuggestion with _$SearchSuggestion {
  factory SearchSuggestion({
    @Default('') String type,
    @Default('') String value,
  }) = _SearchSuggestion;

  factory SearchSuggestion.fromJson(Map<String, dynamic> json) =>
      _$SearchSuggestionFromJson(json);
}
