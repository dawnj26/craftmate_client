import 'package:freezed_annotation/freezed_annotation.dart';

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

    Respond only using this JSON format and make strings is in plain text and make it in one line:
    [
      {
        "title": "Title of the project",
        "description": "Description of the project"
      }
    ]
    ''';
  }

  String generateProjectPrompt() {
    return '';
  }
}
