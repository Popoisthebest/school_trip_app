import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget PlaceImageSlide(String placeName, svgFileName, imageCount) {
  return Column(
    children: [
      Container(
        height: 2, // 선의 높이
        color: const Color(0XFF4D9E8A), // 초록색 선
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            const SizedBox(
              height: 24,
            ),
            Row(
              children: [
                SvgPicture.asset(
                    'assets/travel_screen_icons/map_pin_icons.svg'),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  placeName,
                  style: const TextStyle(
                    color: Color(0xFF1A1A1A),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Ownglyph okticon',
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Stack(
              children: [
                Image.asset(
                  'assets/travel_background_imgaes/${svgFileName}_image.png',
                  width: 355,
                  height: 220,
                  fit: BoxFit.contain,
                ),
                Positioned(
                  top: 10,
                  right: 10,
                  child: Container(
                    height: 23,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: const Color(0x7fffffff),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 13),
                          child: Text(
                            imageCount,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
      Container(
        height: 2, // 선의 높이
        color: const Color(0XFF4D9E8A), // 초록색 선
      ),
    ],
  );
}
