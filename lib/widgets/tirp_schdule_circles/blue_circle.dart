import 'package:flutter/material.dart';

Widget BlueCircle() {
  return Container(
    width: 9,
    height: 9,
    decoration: BoxDecoration(
      color: const Color(0xff4F9BD4),
      shape: BoxShape.circle,
      border: Border.all(
        color: const Color(0xff38719D),
        width: 1,
      ),
    ),
  );
}
