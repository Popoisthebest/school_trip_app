import 'package:flutter/material.dart';

Widget PlaceDiscription(
    String mainDis, image, subDis, detailDis, bool isNoTitle) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10.0),
    child: Column(
      children: [
        isNoTitle
            ? const SizedBox()
            : Row(
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
          height: 10,
        ),
        SizedBox(
          width: double.infinity,
          height: 220,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(
          height: 20,
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
              child: Text(
                detailDis,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontFamily: 'Ownglyph okticon',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
