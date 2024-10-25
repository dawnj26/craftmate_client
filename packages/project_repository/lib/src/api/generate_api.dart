import 'dart:convert';

import 'package:config_repository/config_repository.dart';
import 'package:project_repository/project_repository.dart';

class GenerateApi {
  final ConfigRepository _config;

  const GenerateApi({required ConfigRepository config}) : _config = config;

  Future<List<ProjectSuggestion>> generateProjectSuggestion({
    required Prompt prompt,
  }) async {
    try {
      final response = await _config.makeRequest<Map<String, dynamic>>(
        '/project/suggest',
        method: 'POST',
        data: {'prompt': prompt.generateSuggestionPrompt()},
        withAuthorization: true,
      );

      if (response.data == null) {
        throw GenerateException(message: 'Response is null');
      }

      final suggestions = jsonDecode(response.data!['data'] as String) as List;

      _config.logger.info('Prompt: $prompt');
      return suggestions.map((suggestion) {
        return ProjectSuggestion.fromJson(suggestion as Map<String, dynamic>);
      }).toList();
    } on RequestException catch (e) {
      throw GenerateException(message: e.message);
    } on TokenException catch (e) {
      throw GenerateException(message: e.message);
    }
  }
}
