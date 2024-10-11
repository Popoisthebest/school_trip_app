import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget StarAndHeart(String rate, int rateCount, String people) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: Container(
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xff71b1a1),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 22.0),
            child: Row(
              children: [
                // 별 개수를 동적으로 표시하기 위해 rateCount 매개변수를 사용합니다.
                for (int i = 0; i < 5; i++)
                  if (i < rateCount)
                    SvgPicture.asset(
                        'assets/travel_detail_icons/filled_star_icons.svg')
                  else
                    SvgPicture.asset(
                        'assets/travel_detail_icons/mdi_star-outline.svg'),
                const SizedBox(
                  width: 11.5,
                ),
                Text(
                  rate,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Ownglyph okticon',
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 37.0),
            child: Row(
              children: [
                SvgPicture.asset(
                    'assets/travel_detail_icons/filled_heart_icons.svg'),
                const SizedBox(width: 10),
                Text(
                  people,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Ownglyph okticon',
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ),
  );
}
