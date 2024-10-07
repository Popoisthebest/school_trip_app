import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class TripSchduleScreen extends StatefulWidget {
  const TripSchduleScreen({super.key});

  @override
  State<TripSchduleScreen> createState() => _TripSchduleScreenState();
}

class _TripSchduleScreenState extends State<TripSchduleScreen> {
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(34.6937249, 135.5022535);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff4D9E8A),
        leading: const Column(
          children: [
            Text(
              '도쿄 여행',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontFamily: 'Ownglyph okticon',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            )
          ],
        ),
      ),
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: _center,
          zoom: 11.0,
        ),
        markers: const {
          // Marker(
          //   markerId: const MarkerId("오사카시"),
          //   position: const LatLng(34.6937249, 135.5022535),
          //   infoWindow: InfoWindow(
          //     title: "오사카시",
          //     snippet: "우리가 갈 곳",
          //     onTap: () {},
          //   ), // InfoWindow
          // ),
        },
      ),
    );
  }
}
