import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapComponent extends StatefulWidget {
  final LatLng initialPosition;
  final List<LatLng> locations;
  final List<String> locationNames;
  final Function(GoogleMapController) onMapCreated;

  const GoogleMapComponent({
    super.key,
    required this.initialPosition,
    required this.locations,
    required this.locationNames,
    required this.onMapCreated,
  });

  @override
  State<GoogleMapComponent> createState() => _GoogleMapComponentState();
}

class _GoogleMapComponentState extends State<GoogleMapComponent> {
  Set<Marker> _createMarkers() {
    return widget.locations.asMap().entries.map((entry) {
      int index = entry.key;
      LatLng location = entry.value;

      return Marker(
        markerId: const MarkerId('location_\$index'),
        position: location,
        infoWindow: InfoWindow(
          title: widget.locationNames[index],
        ),
      );
    }).toSet();
  }

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      initialCameraPosition: CameraPosition(
        target: widget.initialPosition,
        zoom: 11.0,
      ),
      onMapCreated: widget.onMapCreated,
      markers: _createMarkers(),
    );
  }
}
