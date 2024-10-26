import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:material_repository/material_repository.dart';

part 'project_suggestion.freezed.dart';
part 'project_suggestion.g.dart';

@freezed
class ProjectSuggestion with _$ProjectSuggestion {
  const factory ProjectSuggestion({
    @Default('') String title,
    @Default('') String description,
    List<String>? steps,
    @Default([]) List<Material> materials,
  }) = _ProjectSuggestion;

  factory ProjectSuggestion.fromJson(Map<String, dynamic> json) =>
      _$ProjectSuggestionFromJson(json);
}
