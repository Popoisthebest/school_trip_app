import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleTripMapScreen extends StatefulWidget {
  const GoogleTripMapScreen({super.key});

  @override
  State<GoogleTripMapScreen> createState() => _GoogleTripMapScreenState();
}

class _GoogleTripMapScreenState extends State<GoogleTripMapScreen> {
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(34.6937249, 135.5022535);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      initialCameraPosition: CameraPosition(
        target: _center,
        zoom: 11.0,
      ),
      markers: {
        Marker(
          markerId: const MarkerId("오사카시"),
          position: const LatLng(34.6937249, 135.5022535),
          infoWindow: InfoWindow(
            title: "오사카시",
            snippet: "우리가 갈 곳",
            onTap: () {},
          ), // InfoWindow
        ),
        Marker(
          markerId: const MarkerId("몰루"),
          position: const LatLng(34.6937249, 137.5022535),
          infoWindow: InfoWindow(
            title: "오사카시",
            snippet: "우리가 갈 곳",
            onTap: () {},
          ), // InfoWindow
        ),
      },
    );
  }
}
