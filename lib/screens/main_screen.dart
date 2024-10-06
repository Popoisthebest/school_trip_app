import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:school_trip_app/screens/component/common_layout.dart';
import 'package:school_trip_app/widgets/area_grid_view.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: const Color(0xff4D9E8A),
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "도쿄여행",
                      style: TextStyle(
                        fontFamily: "Ownglyph okticon",
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                        height: 18 / 14,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    const SizedBox(height: 3),
                    const Text(
                      "대전대신고 52회, 수학여행 D-DAY!",
                      style: TextStyle(
                        fontFamily: "Ownglyph okticon",
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        height: 26 / 20,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    const SizedBox(height: 5),
                    Container(
                      width: 116,
                      height: 22,
                      decoration: ShapeDecoration(
                        color: const Color(0x4C004B3D),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          '2024.10.22 ~ 10.25',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: 'Ownglyph okticon',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                  ],
                ),
              ),
            ),
            const AreaGridView(),
          ],
        ),
      ),
    );
  }
}
