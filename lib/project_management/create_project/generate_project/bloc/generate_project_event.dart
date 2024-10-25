part of 'generate_project_bloc.dart';

@freezed
class GenerateProjectEvent with _$GenerateProjectEvent {
  const factory GenerateProjectEvent.started() = _Started;
  const factory GenerateProjectEvent.materialsLoaded() = _MaterialsLoaded;
  const factory GenerateProjectEvent.generateSuggestions({
    required String type,
    required String difficulty,
    required List<String> materials,
    @Default('') String additionalInfo,
  }) = _GenerateSuggestions;
}
