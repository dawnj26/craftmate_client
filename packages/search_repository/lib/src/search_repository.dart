import 'package:config_repository/config_repository.dart';
import 'package:project_repository/project_repository.dart';
import 'package:search_repository/src/exceptions/search_exception.dart';
import 'package:search_repository/src/models/search_suggestion/search_suggestion.dart';

abstract class ISearchRepository {
  Future<List<SearchSuggestion>> searchSuggestions(String query);
  Future<List<Project>> searchProjects(String query);
}

class SearchRepository implements ISearchRepository {
  const SearchRepository({
    required ConfigRepository configRepository,
  }) : _config = configRepository;

  final ConfigRepository _config;

  @override
  Future<List<Project>> searchProjects(String query) async {
    try {
      final response = await _config.makeRequest<Map<String, dynamic>>(
        '/search/projects',
        method: 'GET',
        queryParameters: <String, dynamic>{
          'query': query,
        },
      );

      if (response.data == null) {
        throw const SearchException('No data found');
      }

      final projects = (response.data!['data'] as List<dynamic>)
          .map((e) => Project.fromJson(e))
          .toList();

      return projects;
    } on RequestException catch (e) {
      throw SearchException(e.message);
    }
  }

  @override
  Future<List<SearchSuggestion>> searchSuggestions(String query) async {
    try {
      final response = await _config.makeRequest<Map<String, dynamic>>(
        '/search/suggest',
        method: 'GET',
        queryParameters: <String, dynamic>{
          'query': query,
        },
      );

      if (response.data == null) {
        throw const SearchException('No data found');
      }

      final suggestions = (response.data!['data'] as List<dynamic>)
          .map((e) => SearchSuggestion.fromJson(e))
          .toList();

      return suggestions;
    } on RequestException catch (e) {
      throw SearchException(e.message);
    }
  }
}
