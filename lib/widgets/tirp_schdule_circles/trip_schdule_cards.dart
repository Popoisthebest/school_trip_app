import 'package:flutter/material.dart';

Widget SchduleCard(String title, String discription, Function onTap) {
  return Padding(
    padding: const EdgeInsets.only(top: 16.0),
    child: Container(
      width: 280,
      height: 60,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            width: 2,
            color: Color(0xFF4D9E8A),
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 11.0, left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Color(0xFF1A1A1A),
                    fontSize: 16,
                    fontFamily: 'Ownglyph okticon',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  discription,
                  style: const TextStyle(
                    color: Color(0xBF1A1A1A),
                    fontSize: 12,
                    fontFamily: 'Ownglyph okticon',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
