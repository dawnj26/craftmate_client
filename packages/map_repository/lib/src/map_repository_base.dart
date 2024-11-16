import 'package:config_repository/config_repository.dart';
import 'package:map_repository/src/exceptions/map_exception.dart';
import 'package:map_repository/src/models/place.dart';

abstract class IMapRepository {
  Future<List<Place>> searchPlaces(String query);
}

class MapRepository implements IMapRepository {
  final ConfigRepository _configRepository;
  const MapRepository(this._configRepository);

  @override
  Future<List<Place>> searchPlaces(String query) async {
    try {
      final response = await _configRepository.makeRequest(
        '/autocomplete',
        queryParameters: {
          'text': query,
          'format': 'json',
          'apiKey': _configRepository.placesApiKey,
        },
        isPlacesApi: true,
      );

      if (response.data == null) {
        throw MapException('No data found');
      }

      final results = response.data['results'] as List<dynamic>;

      return results
          .map((e) => Place.fromJson(e as Map<String, dynamic>))
          .toList();
    } on RequestException catch (e) {
      throw MapException(e.message);
    }
  }
}
