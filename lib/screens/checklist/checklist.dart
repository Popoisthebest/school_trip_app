import 'package:flutter/material.dart';
import 'package:school_trip_app/widgets/travel_screens/custom_app_bar.dart';

class Checklist extends StatelessWidget {
  const Checklist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          buildCustomAppBar(context, '체크리스트'),
        ],
      ),
    );
  }
}