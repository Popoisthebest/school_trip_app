import 'package:flutter/material.dart';

Widget DayShow(String day) {
  return Container(
    decoration: BoxDecoration(
      border: Border.all(
        color: const Color(0xff4D9E8A),
        width: 2,
      ),
      borderRadius: BorderRadius.circular(5),
    ),
    child: Padding(
      padding: const EdgeInsets.fromLTRB(8, 2, 8, 2),
      child: Text(
        day,
        style: const TextStyle(
          fontFamily: "Ownglyph okticon",
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: Color(0xff1a1a1a),
          height: 16 / 12,
        ),
      ),
    ),
  );
}
