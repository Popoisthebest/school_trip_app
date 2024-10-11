import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget buildCustomAppBar() {
  return SafeArea(
    child: Padding(
      padding: const EdgeInsets.only(top: 17.0, left: 21, right: 26),
      child: Container(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset(
                'assets/app_bar_icons/travel_icons/leftcare_icon.svg'),
            SvgPicture.asset('assets/app_bar_icons/travel_icons/map_icon.svg'),
          ],
        ),
      ),
    ),
  );
}
