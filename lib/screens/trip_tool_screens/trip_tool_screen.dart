import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:school_trip_app/widgets/tool_wheather/tool_wheather.dart';

class TripToolScreen extends StatelessWidget {
  const TripToolScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  const SizedBox(
                    height: 46,
                  ),
                  const Row(
                    children: [
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: '수학여행 중\n도쿄 ',
                              style: TextStyle(
                                color: Color(0xFF1A1A1A),
                                fontSize: 32,
                                fontFamily: 'Ownglyph okticon',
                                fontWeight: FontWeight.w700,
                                height: 0,
                              ),
                            ),
                            TextSpan(
                              text: '날씨',
                              style: TextStyle(
                                color: Color(0xFF4F9AD4),
                                fontSize: 32,
                                fontFamily: 'Ownglyph okticon',
                                fontWeight: FontWeight.w700,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            width: 2, color: Color(0xFF4D9E8A)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ToolWheather('10.22', '14/21', 'rain'),
                          ToolWheather('10.23', '14/21', 'sun'),
                          ToolWheather('10.24', '14/21', 'cloudsun'),
                          ToolWheather('10.24', '14/21', 'sun'),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Row(
                    children: [
                      Text(
                        '다른 언어로\n번역',
                        style: TextStyle(
                          color: Color(0xFF1A1A1A),
                          fontSize: 32,
                          fontFamily: 'Ownglyph okticon',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 60,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            width: 2, color: Color(0xFF4D9E8A)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 45.0),
                      child: Row(
                        children: [
                          Text(
                            '한국어',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF1A1A1A),
                              fontSize: 16,
                              fontFamily: 'Ownglyph okticon',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
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
}
