import 'package:flutter/material.dart';
import 'package:school_trip_app/screens/emergency_screens/emergency_screen.dart';

import 'package:school_trip_app/screens/loading_screens/splash_screen.dart';
import 'package:school_trip_app/screens/travel_screens/incheon_airport.dart';
import 'package:school_trip_app/widgets/travel_screens/incheon_components/setting.dart';

List<String> list = [
  "assets/travel_detail_images/incheon_airport_images/incheon6.png",
"assets/travel_detail_images/incheon_airport_images/incheon7.png",
"assets/travel_detail_images/incheon_airport_images/incheon8.png",
];

void main() {
  runApp(const SchoolTripApp());
}

class SchoolTripApp extends StatefulWidget {
  const SchoolTripApp({super.key});

  @override
  State<SchoolTripApp> createState() => _SchoolTripAppState();
}

class _SchoolTripAppState extends State<SchoolTripApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: IncheonAirport(),
      ),
    );
  }
}
