import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget ArrowCustomPaint(String distance) {
  return Stack(
    alignment: Alignment.center,
    children: [
      SvgPicture.asset('assets/trip_schdule_icons/arrow_icon.svg'),
      Text(
        distance,
        style: const TextStyle(
          fontFamily: "Ownglyph okticon",
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: Color(0xff000000),
          height: 16 / 12,
        ),
        textAlign: TextAlign.left,
      )
    ],
  );
}
