import 'package:flutter/material.dart';

import 'package:school_trip_app/screens/loading_screens/splash_screen.dart';
import 'package:school_trip_app/screens/travel_screens/disney_detail_screen.dart';
import 'package:school_trip_app/screens/travel_screens/hakone_koanso_screen.dart';

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
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: HakoneKoansoDetailScreen(),
      ),
    );
  }
}
