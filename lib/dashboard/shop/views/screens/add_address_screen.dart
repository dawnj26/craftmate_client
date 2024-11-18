import 'dart:async';

import 'package:craftmate_client/globals.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:map_repository/map_repository.dart';
import 'package:uuid/uuid.dart';

class AddAddressScreen extends StatefulWidget {
  const AddAddressScreen({super.key, this.onAddressSelected});

  final void Function(Place place)? onAddressSelected;

  @override
  State<AddAddressScreen> createState() => AddAddressScreenState();
}

class AddAddressScreenState extends State<AddAddressScreen> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  final CameraPosition _defaultLocation = const CameraPosition(
    target: LatLng(15.813742, 120.456334),
    zoom: 14.4746,
  );

  LatLng _currentCenter = const LatLng(0, 0);
  final TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _requestLocationPermission();
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  Future<void> _requestLocationPermission() async {
    var status = await Geolocator.checkPermission();

    if (status == LocationPermission.denied) {
      status = await Geolocator.requestPermission();
    }

    if (status == LocationPermission.whileInUse ||
        status == LocationPermission.always) {
      _getCurrentLocation();
    }
  }

  Future<void> _getCurrentLocation() async {
    try {
      final position = await Geolocator.getCurrentPosition(
        locationSettings: const LocationSettings(
          accuracy: LocationAccuracy.high,
          distanceFilter: 100,
        ),
      );

      final controller = await _controller.future;
      final newPosition = CameraPosition(
        target: LatLng(position.latitude, position.longitude),
        zoom: 14.4746,
      );

      controller.animateCamera(CameraUpdate.newCameraPosition(newPosition));
    } catch (e) {
      logger.error('Error getting current location: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Add Address'),
        actions: [
          IconButton(
            onPressed: () async {
              final placemarks = await placemarkFromCoordinates(
                _currentCenter.latitude,
                _currentCenter.longitude,
              );

              if (!context.mounted) return;
              logger.info(placemarks);

              final placemark = placemarks.first;

              final place = Place(
                placeId: const Uuid().v4(),
                name: _buildAddress(placemark),
                lat: _currentCenter.latitude,
                lon: _currentCenter.longitude,
              );

              widget.onAddressSelected?.call(place);
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.check),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TypeAheadField<Place>(
              builder: (context, controller, focusNode) {
                return TextField(
                  controller: controller,
                  focusNode: focusNode,
                  decoration: InputDecoration(
                    hintText: 'Search for a place',
                    border: const OutlineInputBorder(),
                    prefixIcon: const Icon(Icons.search),
                    suffixIcon: IconButton(
                      onPressed: () => controller.clear(),
                      icon: const Icon(Icons.clear),
                    ),
                  ),
                );
              },
              itemBuilder: (context, place) {
                return ListTile(
                  leading: const Icon(Icons.location_on),
                  title: Text(place.name),
                  subtitle: Text('${place.lat}, ${place.lon}'),
                );
              },
              onSelected: (place) async {
                final controller = await _controller.future;
                controller.animateCamera(
                  CameraUpdate.newLatLng(LatLng(place.lat, place.lon)),
                );
              },
              suggestionsCallback: (q) {
                if (q.trim().isEmpty) {
                  return null;
                }
                return context.read<MapRepository>().searchPlaces(q);
              },
            ),
          ),
          Expanded(
            child: GoogleMapper(
              initialCameraPosition: _defaultLocation,
              onMapCreated: (GoogleMapController controller) {
                _controller.complete(controller);
              },
              onCameraMove: (CameraPosition position) {
                _currentCenter = position.target;
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _requestLocationPermission,
        child: const Icon(Icons.location_searching_rounded),
      ),
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

class GoogleMapper extends StatelessWidget {
  const GoogleMapper({
    super.key,
    required this.initialCameraPosition,
    this.onCameraMove,
    this.onMapCreated,
  });

  final CameraPosition initialCameraPosition;
  final void Function(CameraPosition)? onCameraMove;
  final void Function(GoogleMapController)? onMapCreated;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GoogleMap(
          initialCameraPosition: initialCameraPosition,
          onMapCreated: onMapCreated,
          onCameraMove: onCameraMove,
          zoomControlsEnabled: false,
        ),
        const Center(
          child: IgnorePointer(
            child: Crosshair(),
          ),
        ),
      ],
    );
  }
}

class Crosshair extends StatelessWidget {
  const Crosshair({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Transform.translate(
      offset: const Offset(
        0,
        -15,
      ), // Move entire widget up by half its total height
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: theme.colorScheme.error.withOpacity(0.9),
              border: Border.all(
                color: theme.colorScheme.onError,
                width: 2,
              ),
            ),
          ),
          CustomPaint(
            size: const Size(12, 10),
            painter: MarkerTrianglePainter(color: theme.colorScheme.error),
          ),
        ],
      ),
    );
  }
}

class MarkerTrianglePainter extends CustomPainter {
  MarkerTrianglePainter({required this.color});
  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    final path = Path()
      ..moveTo(size.width / 2, size.height)
      ..lineTo(0, 0)
      ..lineTo(size.width, 0)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
