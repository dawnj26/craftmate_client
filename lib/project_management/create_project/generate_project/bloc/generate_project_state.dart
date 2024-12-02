part of 'generate_project_bloc.dart';

@freezed
class GenerateProjectState with _$GenerateProjectState {
  const factory GenerateProjectState.initial({
    @Default([]) List<Material> materials,
    String? imagePath,
  }) = Initial;
  const factory GenerateProjectState.loadingMaterials({
    @Default([]) List<Material> materials,
    String? imagePath,
  }) = LoadingMaterials;
  const factory GenerateProjectState.loadedMaterials({
    @Default([]) List<Material> materials,
    String? imagePath,
  }) = LoadedMaterials;
  const factory GenerateProjectState.loadingSuggestions({
    @Default([]) List<Material> materials,
    String? imagePath,
  }) = LoadingSuggestions;
  const factory GenerateProjectState.loadedSuggestions({
    @Default([]) List<Material> materials,
    String? imagePath,
    required List<ProjectSuggestion> suggestions,
    required Prompt prompt,
  }) = LoadedSuggestions;
  const factory GenerateProjectState.error({
    @Default([]) List<Material> materials,
    String? imagePath,
    required String message,
  }) = Error;
}
