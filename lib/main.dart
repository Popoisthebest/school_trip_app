import 'package:flutter/material.dart';

import 'package:school_trip_app/screens/loading_screens/splash_screen.dart';
import 'package:school_trip_app/screens/travel_screens/travel_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TravelLocation(),
    );
  }
}

class SchoolTripApp extends StatefulWidget {
  const SchoolTripApp({super.key});

  @override
  State<SchoolTripApp> createState() => _SchoolTripAppState();
}

class _SchoolTripAppState extends State<SchoolTripApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: TravelLocation(),
      ),
    );
  }
}
