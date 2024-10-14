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
  late GoogleMapController _controller;

  Set<Marker> _createMarkers() {
    return widget.locations.asMap().entries.map((entry) {
      int index = entry.key;
      LatLng location = entry.value;

      return Marker(
        markerId: MarkerId('location_$index'),
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
        target: widget.locations.isNotEmpty
            ? widget.locations[0]
            : widget.initialPosition,
        zoom: 11.0,
      ),
      onMapCreated: (controller) {
        _controller = controller;
        widget.onMapCreated(controller);

        // 마커의 이름을 처음에 실행했을 때 표시
        Future.delayed(const Duration(milliseconds: 500), () {
          if (widget.locations.isNotEmpty) {
            _controller.showMarkerInfoWindow(const MarkerId('location_0'));
          }
        });
      },
      markers: _createMarkers(),
    );
  }
}
