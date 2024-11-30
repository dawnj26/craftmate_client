import 'package:config_repository/config_repository.dart';
import 'package:project_repository/project_repository.dart';
import 'package:search_repository/src/exceptions/search_exception.dart';
import 'package:search_repository/src/models/search_suggestion/search_suggestion.dart';
import 'package:user_repository/user_repository.dart';

abstract class ISearchRepository {
  Future<List<SearchSuggestion>> searchSuggestions(String query);
  Future<List<Project>> searchProjects(String query);
  Future<List<User>> searchUsers(String query);
  Future<List<SearchSuggestion>> searchShopSuggestions(String query);
}

class SearchRepository implements ISearchRepository {
  const SearchRepository({
    required ConfigRepository configRepository,
  }) : _config = configRepository;

  final ConfigRepository _config;

  Set<String> _generateTrigrams(String text) {
    if (text.length < 3) return {text.toLowerCase()};

    final normalized = text.toLowerCase();
    final trigrams = <String>{};
    for (var i = 0; i <= text.length - 3; i++) {
      trigrams.add(normalized.substring(i, i + 3));
    }
    return trigrams;
  }

  double _calculateTrigramSimilarity(String text1, String text2) {
    final trigrams1 = _generateTrigrams(text1);
    final trigrams2 = _generateTrigrams(text2);

    if (trigrams1.isEmpty || trigrams2.isEmpty) return 0;

    final intersection = trigrams1.intersection(trigrams2).length;
    final union = trigrams1.union(trigrams2).length;

    return intersection / union;
  }

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

  @override
  Future<List<User>> searchUsers(String query) async {
    try {
      final response = await _config.makeRequest<Map<String, dynamic>>(
        '/search/users',
        method: 'GET',
        queryParameters: <String, dynamic>{
          'query': query,
        },
      );

      if (response.data == null) {
        throw const SearchException('No data found');
      }

      _config.logger.info('Response: ${response.data}');

      final users = (response.data!['data'] as List<dynamic>)
          .map((e) => User.fromJson(e))
          .toList();

      return users;
    } on RequestException catch (e) {
      throw SearchException(e.message);
    }
  }

  @override
  Future<List<SearchSuggestion>> searchShopSuggestions(String query) async {
    try {
      final productsRef = _config.db.collection('/shop');
      final products = await productsRef.get();

      final suggestions = products.docs
          .map((doc) {
            final data = doc.data();
            final nameScore = _calculateTrigramSimilarity(
              query,
              data['name'].toString(),
            );
            final descScore = _calculateTrigramSimilarity(
              query,
              data['description'].toString(),
            );

            return (
              doc: doc,
              score: nameScore * 2 + descScore, // Name matches weighted higher
            );
          })
          .where((item) => item.score > 0.1) // Minimum similarity threshold
          .toList()
        ..sort((a, b) => b.score.compareTo(a.score));

      return suggestions
          .take(5)
          .map((item) => SearchSuggestion(
                type: 'shop',
                value: item.doc.data()['name'] as String,
              ))
          .toList();
    } catch (e) {
      _config.logger.error(
          'Failed to search shop suggestions: $e', e, StackTrace.current);
      throw SearchException('Failed to search shop suggestions: $e');
    }
  }
}
