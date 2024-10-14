import 'package:flutter/material.dart';

Widget PlaceName(String name, jaName) {
  return Padding(
    padding: const EdgeInsets.only(top: 13, left: 20),
    child: Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: const TextStyle(
                color: Color(0xFF1A1A1A),
                fontSize: 24,
                fontFamily: 'Ownglyph okticon',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
            Text(
              jaName,
              style: const TextStyle(
                color: Color(0xFF1A1A1A),
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontFamily: 'Ownglyph okticon',
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ],
    ),
  );
}
