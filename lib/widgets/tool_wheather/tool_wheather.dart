import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget ToolWheather(String date, temperature, weather) {
  return Column(
    children: [
      Text(
        date,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontFamily: 'Ownglyph okticon',
          fontWeight: FontWeight.w700,
          height: 0,
        ),
      ),
      const SizedBox(
        height: 9,
      ),
      SvgPicture.asset(
        'assets/tool_screen_icons/${weather}_weather_icon.svg',
        width: 36,
        height: 36,
      ),
      const SizedBox(
        height: 10,
      ),
      Text(
        temperature,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontFamily: 'Ownglyph okticon',
          fontWeight: FontWeight.w700,
        ),
      )
    ],
  );
}
