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
      String data = response.data!['data'] as String;

      data = data.replaceAll('```json', '');
      data = data.replaceAll('```', '');

      final suggestions = jsonDecode(data) as List;

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

  Future<ProjectSuggestion> generateProject(
      Prompt prompt, ProjectSuggestion suggestion) async {
    final titleKey = suggestion.title.replaceAll(' ', '_');
    final cache = _config.prefs.getString(titleKey);

    if (cache != null) {
      final p = ProjectSuggestion.fromJson(jsonDecode(cache));
      return p;
    }
    try {
      final textPrompt = prompt.generateProjectPrompt(suggestion);
      _config.logger.info('Prompt: $textPrompt');
      final response = await _config.makeRequest<Map<String, dynamic>>(
        '/project/generate',
        method: 'POST',
        data: {'prompt': textPrompt},
        withAuthorization: true,
      );

      if (response.data == null) {
        throw GenerateException(message: 'Response is null');
      }

      String data = response.data!['data'] as String;

      data = data.replaceAll('```json', '');
      data = data.replaceAll('```', '');

      final resJson = jsonDecode(data);
      final res = ProjectSuggestion.fromJson(resJson);

      _config.prefs.setString(titleKey, jsonEncode(res.toJson()));
      return res;
    } on RequestException catch (e) {
      _config.logger.error('RequestException: $e');
      throw GenerateException(message: e.message);
    } on TokenException catch (e) {
      throw GenerateException(message: e.message);
    }
  }
}
