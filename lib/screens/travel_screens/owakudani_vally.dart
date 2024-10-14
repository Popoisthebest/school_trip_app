import 'package:flutter/material.dart';
import 'package:school_trip_app/widgets/travel_screens/custom_app_bar.dart';
import 'package:school_trip_app/widgets/travel_screens/place_name.dart';
import 'package:school_trip_app/widgets/travel_screens/star_and_heart.dart';

class OwakudaniVally extends StatelessWidget {
  const OwakudaniVally({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          buildCustomAppBar(),
          Expanded(child: SingleChildScrollView(
            child: Column(
              children: [
                PlaceName("오와쿠다니 계곡", "大涌谷渓谷"),
                StarAndHeart("4.0점", 4, "1.3만명"),
              ],
            ),
          ))
        ],
      ),
    );
  }
}