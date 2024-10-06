import 'package:flutter/material.dart';
import 'package:school_trip_app/screens/bottom_navigation_screen.dart';
import 'package:school_trip_app/screens/splash_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const SchoolTripApp());
}

class SchoolTripApp extends StatelessWidget {
  const SchoolTripApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: BottomNavigationScreen(),
    );
  }
}
