import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget Review(String reviewContext) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10.0),
    child: Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        const Row(
          children: [
            Text(
              '리뷰',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                fontFamily: 'Ownglyph okticon',
                color: Color(0xFF1A1A1A),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SvgPicture.asset('assets/travel_screen_icons/profil_icons.svg'),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  '오세철님의 리뷰',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Ownglyph okticon',
                    color: Color(0xFF1A1A1A),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                SvgPicture.asset(
                    'assets/travel_screen_icons/three_dots_vertical_icons.svg'),
                const SizedBox(
                  width: 10,
                ),
              ],
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Flexible(
                child: Text(
              reviewContext,
              style: const TextStyle(
                fontFamily: "Ownglyph okticon",
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.left,
            )),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/travel_background_imgaes/review1_image.png',
                height: 257, fit: BoxFit.contain),
            const SizedBox(
              width: 10,
            ),
            Stack(
              children: [
                Column(
                  children: [
                    Image.asset(
                      'assets/travel_background_imgaes/review2_image.png',
                      height: 92,
                      fit: BoxFit.contain,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Image.asset(
                      'assets/travel_background_imgaes/black_background_image.png',
                      height: 155,
                      fit: BoxFit.contain,
                    ),
                  ],
                ),
                Positioned(
                  // 텍스트를 중앙에 배치
                  top: 165, // 텍스트의 위치를 이미지 중간에 맞추기 위한 y 좌표
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Text(
                      '+ 10',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Ownglyph okticon',
                        color: Colors.white.withOpacity(0.75),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ],
    ),
  );
}
