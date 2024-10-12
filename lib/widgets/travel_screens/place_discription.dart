import 'package:flutter/material.dart';

Widget PlaceDiscription(String mainDis, image, subDis, detailDis) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10.0),
    child: Column(
      children: [
        const SizedBox(
          height: 30,
        ),
        Row(
          children: [
            Text(
              mainDis,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                fontFamily: 'Ownglyph okticon',
                color: const Color(0xFF1A1A1A).withOpacity(0.75),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            image,
            fit: BoxFit.contain,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Row(
          children: [
            Text(
              subDis,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                fontFamily: 'Ownglyph okticon',
                color: const Color(0xFF1A1A1A).withOpacity(0.75),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Flexible(
              child: Text(detailDis,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Ownglyph okticon',
                    color: const Color(0xFF1A1A1A).withOpacity(0.75),
                  )),
            ),
          ],
        ),
      ],
    ),
  );
}
