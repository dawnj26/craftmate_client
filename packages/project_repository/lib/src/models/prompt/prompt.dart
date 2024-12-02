import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:project_repository/src/models/generate/project_suggestion.dart';

part 'prompt.freezed.dart';

@freezed
class Prompt with _$Prompt {
  const Prompt._();

  const factory Prompt({
    required String type,
    required String difficulty,
    required List<String> materials,
    @Default('') String additionalInfo,
    String? imagePath,
  }) = _Prompt;

  String generateSuggestionPrompt() {
    final materialsString = imagePath == null
        ? materials.join(', ')
        : 'Use the provided reference image for the materials.';

    return '''
    Act as an expert artisan crafting consultant. Generate 5 unique and creative crafting project suggestions based on these requirements:
    Project Type: $type
    Difficulty Level: $difficulty
    Available Materials: $materialsString
    Additional Context: ${additionalInfo.isNotEmpty ? additionalInfo : 'None'}


    Use this JSON schema and respond with only the JSON, no markdown or additional text:
    Project = { title: string, description: string }
    Return: list[Project]
    ''';
  }

  String generateProjectPrompt(ProjectSuggestion suggestion) {
    final materialsString = imagePath == null
        ? materials.join(', ')
        : 'Use the provided reference image for the materials.';

    return '''
    Act as an expert artisan and provide a detailed crafting recipe with the following specifications:
    Project Title: ${suggestion.title}
    Project Description: ${suggestion.description}
    Difficulty Level: $difficulty
    Required Materials (include these and add more if needed): $materialsString

    Respond with only the following JSON format, no markdown or additional text:
    {
        "title": string,
        "description": string,
        "steps": list[string],
        "materials": list[{"name": string, "quantity": (single integer)}]
    }
    ''';
  }
}
