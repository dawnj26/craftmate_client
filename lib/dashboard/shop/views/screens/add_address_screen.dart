import 'dart:async';

import 'package:craftmate_client/globals.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:geocoding/geocoding.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:map_repository/map_repository.dart';
import 'package:uuid/uuid.dart';

class AddAddressScreen extends StatefulWidget {
  const AddAddressScreen({
    super.key,
    this.onAddressSelected,
    this.showCircle = false,
  });

  final void Function(Place place, double radius)? onAddressSelected;
  final bool showCircle;

  @override
  State<AddAddressScreen> createState() => AddAddressScreenState();
}

class AddAddressScreenState extends State<AddAddressScreen> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  LatLng _currentCenter = const LatLng(15.813742, 120.456334);
  late final CameraPosition _defaultLocation;

  final TextEditingController searchController = TextEditingController();
  double _radius = 5000; // Radius in meters
  final _zoomLevel = 13.0;

  @override
  void initState() {
    _defaultLocation = CameraPosition(
      target: _currentCenter,
      zoom: _zoomLevel,
    );
    _getCurrentLocation();
    super.initState();
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  Future<void> _getCurrentLocation() async {
    try {
      final curPlace = await context.read<MapRepository>().getCurrentLocation();

      final controller = await _controller.future;
      final newPosition = CameraPosition(
        target: LatLng(curPlace.lat, curPlace.lon),
        zoom: _zoomLevel,
      );

      controller.animateCamera(CameraUpdate.newCameraPosition(newPosition));
    } catch (e) {
      logger.error('Error getting current location: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    final circleSize = (_radius / 10000) * MediaQuery.sizeOf(context).width;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(!widget.showCircle ? 'Add Address' : 'Nearby'),
        actions: [
          IconButton(
            onPressed: () async {
              final placemarks = await placemarkFromCoordinates(
                _currentCenter.latitude,
                _currentCenter.longitude,
              );

              if (!context.mounted) return;

              final placemark = placemarks.first;

              final place = Place(
                placeId: const Uuid().v4(),
                name: _buildAddress(placemark),
                lat: _currentCenter.latitude,
                lon: _currentCenter.longitude,
              );

              widget.onAddressSelected?.call(place, _radius);
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.check),
          ),
        ],
      ),
      body: Stack(
        children: [
          Column(
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
                  showCircle: widget.showCircle,
                  initialCameraPosition: _defaultLocation,
                  circleSize: circleSize,
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
          Positioned(
            bottom: 50,
            left: 10,
            right: 10,
            child: Slider(
              value: _radius,
              min: 1000,
              max: 10000,
              divisions: 9,
              label: '${(_radius / 1000).round()} km',
              onChanged: (value) {
                setState(() {
                  _radius = value;
                });
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _getCurrentLocation,
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

  // Add this function to calculate zoom level based on radius
}

class GoogleMapper extends StatelessWidget {
  const GoogleMapper({
    super.key,
    required this.initialCameraPosition,
    this.onCameraMove,
    this.onMapCreated,
    required this.circleSize,
    this.showCircle = false,
  });

  final CameraPosition initialCameraPosition;
  final double circleSize;
  final void Function(CameraPosition)? onCameraMove;
  final void Function(GoogleMapController)? onMapCreated;
  final bool showCircle;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Stack(
      children: [
        GoogleMap(
          initialCameraPosition: initialCameraPosition,
          onMapCreated: onMapCreated,
          onCameraMove: onCameraMove,
          zoomControlsEnabled: false,
          zoomGesturesEnabled: !showCircle,
        ),
        if (!showCircle)
          const Center(
            child: IgnorePointer(
              child: Crosshair(),
            ),
          )
        else
          Center(
            child: Container(
              width: circleSize,
              height: circleSize,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: theme.colorScheme.error.withOpacity(0.1),
                border: Border.all(
                  color: theme.colorScheme.error,
                  width: 2,
                ),
              ),
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
