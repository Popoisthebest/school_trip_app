import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget buildCustomAppBar(BuildContext context, String title) {
  return SafeArea(
    bottom: false,
    child: Padding(
      padding: const EdgeInsets.only(
        left: 21,
        right: 26,
        bottom: 8,
      ),
      child: Container(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: SvgPicture.asset(
                  'assets/app_bar_icons/travel_icons/leftcare_icon.svg'),
            ),
            Text(
              title,
              style: const TextStyle(
                color: Color(0xFF1A1A1A),
                fontSize: 20,
                fontFamily: 'Ownglyph okticon',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
            SvgPicture.asset('assets/app_bar_icons/travel_icons/map_icon.svg'),
          ],
        ),
      ),
    ),
  );
}
