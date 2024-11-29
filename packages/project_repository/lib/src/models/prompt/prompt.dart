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
  }) = _Prompt;

  String generateSuggestionPrompt() {
    final materialsString = materials.join(', ');

    return '''
    Act like a creative expert artisan and think and provide random 5 crafting project suggestions based on this information:
    I want to ba a/an $type crafting project, Difficulty: $difficulty, Materials: $materialsString, Additional Info: ${additionalInfo.isNotEmpty ? additionalInfo : 'None'}

    Use this JSON schema:
    Project = { title: string, description: string }
    Return: list[Project]
    ''';

    // Respond only using this JSON format, dont generate any md just json, and make strings is in plain text and make it in one line:
    // [
    //   {
    //     "title": "Title of the project",
    //     "description": "Description of the project"
    //   }
    // ]
  }

  String generateProjectPrompt(ProjectSuggestion suggestion) {
    return '''
            Act like a creative expert artisan and think and provide a simple but detailed crafting recipe and continue this crafting project:
            Title: ${suggestion.title}, Description: ${suggestion.description}, Difficulty: $difficulty, Include this materials and add materials if needed: ${materials.join(', ')}
            Respond only using this JSON format in plain text, dont generate any md just json, and make strings is in plain text and make it in one line:
            {
                "title": "Crafting a wooden chair",
                "description": "A simple guide on how to craft a wooden chair",
                "steps": [
                    "Get the wood",
                    "Cut the wood",
                    "Assemble the chair",
                    "Paint the chair"
                    ],
                "materials": [
                    {
                        "name": "Wood",
                        "quantity": 4 (integer type no other types allowed)
                    },
                    {
                        "name": "Nails",
                        "quantity": 4
                    },
                    {
                        "name": "Hammer",
                        "quantity": 1
                    },
                    {
                        "name": "Saw",
                        "quantity": 1
                    },
                    {
                        "name": "Paint",
                        "quantity": 1
                    }
                ]
            }
''';
  }
}
