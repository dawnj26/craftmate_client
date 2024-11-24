import 'package:config_repository/config_repository.dart';
import 'package:dio/dio.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:map_repository/src/exceptions/map_exception.dart';
import 'package:map_repository/src/models/place.dart';

abstract class IMapRepository {
  Future<List<Place>> searchPlaces(String query);
  Future<Place> getCurrentLocation();
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

  Future<bool> _hasLocationPermission() async {
    var status = await Geolocator.checkPermission();

    if (status == LocationPermission.denied) {
      status = await Geolocator.requestPermission();
    }

    if (status == LocationPermission.whileInUse ||
        status == LocationPermission.always) {
      return true;
    }

    return false;
  }

  @override
  Future<Place> getCurrentLocation() async {
    if (!await _hasLocationPermission()) {
      try {
        final response =
            await _configRepository.geoApi.get<Map<String, dynamic>>(
          '/json',
        );

        if (response.data == null) {
          throw MapException('No data found');
        }

        if (response.data!['status'] != 'success') {
          throw MapException('Error getting location');
        }
        _configRepository.logger.info('Location: ${response.data!['city']}');

        return Place.fromJson({
          ...response.data!,
          'formatted':
              '${response.data!['city']}, ${response.data!['regionName']}',
        });
      } on DioException catch (e) {
        throw MapException('Error getting location: ${e.response?.data}');
      }
    }

    final position = await Geolocator.getCurrentPosition(
      locationSettings: const LocationSettings(
        accuracy: LocationAccuracy.high,
        distanceFilter: 100,
      ),
    );
    final mark =
        await placemarkFromCoordinates(position.latitude, position.longitude);

    return Place(
      lat: position.latitude,
      lon: position.longitude,
      name: _buildAddress(mark.first),
    );
  }

  String _buildAddress(Placemark placemark) {
    final parts = [
      placemark.name,
      placemark.subLocality,
      placemark.locality,
      placemark.administrativeArea,
      placemark.postalCode,
      placemark.country,
    ].where((part) => part != null && part.isNotEmpty).join(', ');

    return parts.isEmpty ? 'Unknown location' : parts;
  }
}
