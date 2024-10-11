import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget FirstLineCalculator(String container1, container4) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Container(
        width: 70,
        height: 70,
        decoration: const ShapeDecoration(
          color: Color(0xFFE0E0E0),
          shape: OvalBorder(),
        ),
        child: Center(
          child: Text(
            container1,
            style: const TextStyle(
              color: Color(0xFF616161),
              fontSize: 32,
              fontFamily: 'Ownglyph okticon',
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
      Container(
        width: 70,
        height: 70,
        decoration: const ShapeDecoration(
          color: Color(0xFFE0E0E0),
          shape: OvalBorder(),
        ),
      ),
      Container(
        width: 70,
        height: 70,
        decoration: const ShapeDecoration(
          color: Color(0xFFE0E0E0),
          shape: OvalBorder(),
        ),
      ),
      Container(
        width: 70,
        height: 70,
        decoration: const ShapeDecoration(
          color: Color(0xFF4D9E8A),
          shape: OvalBorder(),
        ),
        child: Center(
          child: SvgPicture.asset(
              'assets/tool_screen_icons/${container4}_icon.svg'),
        ),
      ),
    ],
  );
}

Widget SecondLineCalculator(
    String container1, container2, container3, container4) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Container(
        width: 70,
        height: 70,
        decoration: const ShapeDecoration(
          color: Color(0xFF94C5B9),
          shape: OvalBorder(),
        ),
        child: Center(
          child: Text(
            container1,
            style: const TextStyle(
              color: Color(0xFF1A1A1A),
              fontSize: 32,
              fontFamily: 'Ownglyph okticon',
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
      Container(
        width: 70,
        height: 70,
        decoration: const ShapeDecoration(
          color: Color(0xFF94C5B9),
          shape: OvalBorder(),
        ),
        child: Center(
          child: Text(
            container2,
            style: const TextStyle(
              color: Color(0xFF1A1A1A),
              fontSize: 32,
              fontFamily: 'Ownglyph okticon',
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
      Container(
        width: 70,
        height: 70,
        decoration: const ShapeDecoration(
          color: Color(0xFF94C5B9),
          shape: OvalBorder(),
        ),
        child: Center(
          child: Text(
            container3,
            style: const TextStyle(
              color: Color(0xFF1A1A1A),
              fontSize: 32,
              fontFamily: 'Ownglyph okticon',
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
      Container(
        width: 70,
        height: 70,
        decoration: const ShapeDecoration(
          color: Color(0xFF4D9E8A),
          shape: OvalBorder(),
        ),
        child: Center(
          child: SvgPicture.asset(
              'assets/tool_screen_icons/${container4}_icon.svg'),
        ),
      ),
    ],
  );
}

Widget ThirdLineCalculator(
    String container1, container2, container3, container4) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Container(
        width: 70,
        height: 70,
        decoration: const ShapeDecoration(
          color: Color(0xFF94C5B9),
          shape: OvalBorder(),
        ),
        child: Center(
          child: Text(
            container1,
            style: const TextStyle(
              color: Color(0xFF1A1A1A),
              fontSize: 32,
              fontFamily: 'Ownglyph okticon',
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
      Container(
        width: 70,
        height: 70,
        decoration: const ShapeDecoration(
          color: Color(0xFF94C5B9),
          shape: OvalBorder(),
        ),
        child: Center(
          child: Text(
            container2,
            style: const TextStyle(
              color: Color(0xFF1A1A1A),
              fontSize: 32,
              fontFamily: 'Ownglyph okticon',
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
      Container(
        width: 70,
        height: 70,
        decoration: const ShapeDecoration(
          color: Color(0xFF94C5B9),
          shape: OvalBorder(),
        ),
        child: Center(
          child: Text(
            container3,
            style: const TextStyle(
              color: Color(0xFF1A1A1A),
              fontSize: 32,
              fontFamily: 'Ownglyph okticon',
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
      Container(
        width: 70,
        height: 70,
        decoration: const ShapeDecoration(
          color: Color(0xFF4D9E8A),
          shape: OvalBorder(),
        ),
        child: Center(
          child: SvgPicture.asset(
              'assets/tool_screen_icons/${container4}_icon.svg'),
        ),
      ),
    ],
  );
}

Widget FourthLineCalculator(
    String container1, container2, container3, container4) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Container(
        width: 70,
        height: 70,
        decoration: const ShapeDecoration(
          color: Color(0xFF94C5B9),
          shape: OvalBorder(),
        ),
        child: Center(
          child: Text(
            container1,
            style: const TextStyle(
              color: Color(0xFF1A1A1A),
              fontSize: 32,
              fontFamily: 'Ownglyph okticon',
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
      Container(
        width: 70,
        height: 70,
        decoration: const ShapeDecoration(
          color: Color(0xFF94C5B9),
          shape: OvalBorder(),
        ),
        child: Center(
          child: Text(
            container2,
            style: const TextStyle(
              color: Color(0xFF1A1A1A),
              fontSize: 32,
              fontFamily: 'Ownglyph okticon',
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
      Container(
        width: 70,
        height: 70,
        decoration: const ShapeDecoration(
          color: Color(0xFF94C5B9),
          shape: OvalBorder(),
        ),
        child: Center(
          child: Text(
            container3,
            style: const TextStyle(
              color: Color(0xFF1A1A1A),
              fontSize: 32,
              fontFamily: 'Ownglyph okticon',
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
      Container(
        width: 70,
        height: 70,
        decoration: const ShapeDecoration(
          color: Color(0xFF4D9E8A),
          shape: OvalBorder(),
        ),
        child: Center(
          child: SvgPicture.asset(
              'assets/tool_screen_icons/${container4}_icon.svg'),
        ),
      ),
    ],
  );
}

Widget FifthLineCalculator(String container1, container2, container3) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Container(
        width: 150,
        height: 70,
        decoration: ShapeDecoration(
          color: const Color(0xFF94C5B9),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
        ),
        child: Center(
          child: Text(
            container1,
            style: const TextStyle(
              color: Color(0xFF1A1A1A),
              fontSize: 32,
              fontFamily: 'Ownglyph okticon',
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
      Container(
        width: 70,
        height: 70,
        decoration: const ShapeDecoration(
          color: Color(0xFF94C5B9),
          shape: OvalBorder(),
        ),
        child: Center(
          child: Text(
            container2,
            style: const TextStyle(
              color: Color(0xFF1A1A1A),
              fontSize: 32,
              fontFamily: 'Ownglyph okticon',
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
      Container(
        width: 70,
        height: 70,
        decoration: const ShapeDecoration(
          color: Color(0xFF4D9E8A),
          shape: OvalBorder(),
        ),
        child: Center(
          child: SvgPicture.asset(
              'assets/tool_screen_icons/${container3}_icon.svg'),
        ),
      ),
    ],
  );
}
