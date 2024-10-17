import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher_string.dart';

Widget SosContext(String name, strPhoneNumber, int intPhoneNumber) {
  return Row(
    children: [
      const SizedBox(width: 12),
      SvgPicture.asset('assets/main_screen_images/Phone.svg'),
      const SizedBox(width: 10),
      Text(
        name,
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          fontFamily: 'Ownglyph okticon',
          color: Color(0xFFDBECE8),
        ),
      ),
      const Spacer(),
      GestureDetector(
        onTap: () async {
          var url = "tel:$intPhoneNumber";
          if (await canLaunchUrlString(url)) {
            await launchUrlString(url);
          } else {
            print("전화 걸기 URL을 열 수 없습니다: $url");
          }
        },
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 7.0),
          decoration: BoxDecoration(
            color: const Color(0xFFFF5F5F),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Text(
            strPhoneNumber,
            style: const TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w400,
              fontFamily: 'Ownglyph okticon',
              color: Colors.white,
            ),
          ),
        ),
      ),
      const SizedBox(width: 6),
    ],
  );
}
