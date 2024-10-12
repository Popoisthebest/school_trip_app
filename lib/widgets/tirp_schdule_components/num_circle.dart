import 'package:flutter/material.dart';

Widget NumCircle(int num) {
  return Row(
    children: [
      Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          color: const Color(0xff4D9E8A),
          shape: BoxShape.circle,
          border: Border.all(
            color: const Color(0xff000000),
            width: 1,
          ),
        ),
        child: Center(
          child: Text(
            '$num',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontFamily: 'Ownglyph okticon',
              fontWeight: FontWeight.w400,
              height: 0,
            ),
          ),
        ),
      ),
    ],
  );
}
