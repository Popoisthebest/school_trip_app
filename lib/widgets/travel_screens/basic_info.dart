import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget BasicInfo(String location, howToGo, locationMap) {
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
              '기본정보',
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
          height: 15,
        ),
        // 여기 이미지 경로 입력해서 넣을 수 있게 수정함.
        SizedBox(
          width: double.infinity,
          height: 200,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              locationMap,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
          height: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xff4d9e8a),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7.0),
            child: Row(
              children: [
                const SizedBox(
                  width: 8,
                ),
                SvgPicture.asset(
                    'assets/travel_detail_icons/crosshair_icons.svg'),
                const SizedBox(
                  width: 10,
                ),
                Flexible(
                  child: Text(
                    location,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      fontFamily: 'Ownglyph okticon',
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xff4d9e8a)),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: Text(
                    '현지에서 물어보기',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Ownglyph okticon',
                      color: Color(0xff4d9e8a),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 9),
            Expanded(
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: const Color(0xff4d9e8a),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: Text(
                    '길찾기',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Ownglyph okticon',
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        const Row(
          children: [
            Text(
              '가는법',
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
          height: 10,
        ),
        Row(
          children: [
            Text(
              howToGo,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontFamily: 'Ownglyph okticon',
              ),
            )
          ],
        ),
        const SizedBox(
          height: 20,
        )
      ],
    ),
  );
}
