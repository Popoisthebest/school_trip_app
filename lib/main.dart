import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:school_trip_app/screens/google_trip_map_screen.dart';
import 'package:school_trip_app/screens/main_screen.dart';
import 'package:school_trip_app/screens/splash_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
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
        body: SplashScreen(),
      ),
    );
  }
}
