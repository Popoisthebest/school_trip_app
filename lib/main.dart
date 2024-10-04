import 'package:flutter/material.dart';
import 'package:school_trip_app/screens/main_screen.dart';
import 'package:school_trip_app/screens/splash_screen.dart';

void main() {
  runApp(const SchoolTripApp());
}

class SchoolTripApp extends StatelessWidget {
  const SchoolTripApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainScreen(),
    );
  }
}
