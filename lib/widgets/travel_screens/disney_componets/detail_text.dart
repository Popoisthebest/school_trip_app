import 'package:flutter/material.dart';

Widget DetailText(String context, bool isGrey) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Text(
        '• ', // 점을 추가합니다.
        style: TextStyle(
          height: 0.9,
          fontSize: 18,
        ),
      ),
      Expanded(
        child: Text(
          context,
          style: TextStyle(
            color: isGrey ? Colors.black.withOpacity(0.5) : Colors.black,
            fontSize: 14,
            fontFamily: 'Ownglyph okticon',
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    ],
  );
}
