part of 'generate_project_bloc.dart';

@freezed
class GenerateProjectState with _$GenerateProjectState {
  const factory GenerateProjectState.initial({
    @Default([]) List<Material> materials,
  }) = Initial;
  const factory GenerateProjectState.loadingMaterials({
    @Default([]) List<Material> materials,
  }) = LoadingMaterials;
  const factory GenerateProjectState.loadedMaterials({
    @Default([]) List<Material> materials,
  }) = LoadedMaterials;
  const factory GenerateProjectState.loadingSuggestions({
    @Default([]) List<Material> materials,
  }) = LoadingSuggestions;
  const factory GenerateProjectState.loadedSuggestions({
    @Default([]) List<Material> materials,
    required List<ProjectSuggestion> suggestions,
    required Prompt prompt,
  }) = LoadedSuggestions;
  const factory GenerateProjectState.error({
    @Default([]) List<Material> materials,
    required String message,
  }) = Error;
}
