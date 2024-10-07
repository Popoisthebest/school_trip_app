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
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff4D9E8A),
          flexibleSpace: const Padding(
            padding: EdgeInsets.only(left: 59.0, top: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                ),
                Text(
                  "2024.10.22 ~ 10.25",
                  style: TextStyle(
                    fontFamily: "Ownglyph okticon",
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                    height: 16 / 12,
                  ),
                  textAlign: TextAlign.left,
                )
              ],
            ),
          ),
        ),
        body: Stack(
          children: [
            GoogleMap(
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
            DraggableScrollableSheet(
              initialChildSize: 0.1, // 시트가 처음 나타날 때 차지하는 크기 비율 (20%)
              minChildSize: 0.0, // 최소 크기 비율
              maxChildSize: 0.8, // 최대 크기 비율
              builder: (BuildContext context, scrollController) {
                return Container(
                    color: Colors.white,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Container(
                              width: 50,
                              height: 3,
                              decoration: BoxDecoration(
                                color: const Color(0xff1A1A1A),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ));
              },
            )
          ],
        ),
      ),
    );
  }
}
