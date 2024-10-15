import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:school_trip_app/widgets/travel_screens/basic_info.dart';
import 'package:school_trip_app/widgets/travel_screens/custom_app_bar.dart';
import 'package:school_trip_app/widgets/travel_screens/disney_componets/detail_text.dart';
import 'package:school_trip_app/widgets/travel_screens/place_discription.dart';
import 'package:school_trip_app/widgets/travel_screens/place_name.dart';
import 'package:school_trip_app/widgets/travel_screens/store_info.dart';

class HakonePirateShip extends StatelessWidget {
  const HakonePirateShip({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildCustomAppBar(context, ''),
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 5,
                ),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        "하코네 해적선",
                        style: TextStyle(
                          fontFamily: "Ownglyph okticon",
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff1a1a1a),
                          height: 31 / 24,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    SizedBox(height: 10),
                  ],
                ),
                PlaceDiscription(
                    "",
                    "assets/travel_detail_images/hakone_pirate_ship_images/hakonepirate1.png",
                    "유럽 스타일의 배를 타고\n감상하는 호수 풍경",
                    "영국, 프랑스, 스웨덴의 배를 모티브로 하여 만들어진 세 척의 배를 타고 아시노코를 오갈 수 있다. 저마다의 특색이 강한 배에는 기념 촬영을 할 수 있도록 꾸며진 장소들이 있어서 사진을 찍기 좋으며 잔잔하고 커다란 호수를 감상하기도 좋다.",
                    true),
                PlaceDiscription(
                    "",
                    "assets/travel_detail_images/hakone_pirate_ship_images/hakonepirate2.png",
                    "하코네의 자연 경관을 감상",
                    "아시노코까지 배를 타러 오기 전 혹은 후에 오와쿠다니를 들를 수 있는 코스이기도 해서 많은 사람이 이용한다. 날씨가 좋다면 배 위에서 후지산을 볼 수 있으며, 하코네 프리패스를 이용하면 무료로 이용할 수 있다.",
                    true),
                const SizedBox(height: 30),
                Container(
                  height: 30,
                  decoration: const BoxDecoration(color: Color(0xFFE0E0E0)),
                ),
                const SizedBox(
                  height: 30,
                ),
                BasicInfo(
                  location:
                      "164, Motohakone, Hakone-machi Ashigarashimo-gun, Kanagawa, 250-0522",
                  phoneNumber: "+81-4-6083-6325",
                  link:
                      "http://www.hakone-kankosen.co.jp/foreign/kr/index.html",
                  howToGo: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      children: [
                        DetailText('하코네 등산 선 하코네유모토 역에서 차로 28분', false),
                      ],
                    ),
                  ),
                  showPhoneNumber: true,
                  showLink: true,
                  centerPosition: const LatLng(35.226591, 139.037374),
                  locationName: '하코네 해적선 선착장',
                ),
                Container(
                  decoration: const BoxDecoration(
                    border: Border.symmetric(
                      horizontal: BorderSide(
                        color: Color(0xFFE0E0E0),
                        width: 2,
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 22.0,
                      top: 25,
                      bottom: 25,
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(
                                'assets/travel_detail_icons/time_icon.svg'),
                            const SizedBox(width: 12),
                            const Text(
                              "영업 중 · 매일 09:30 - 17:35\n계절별 운영시간 상이(홈페이지 참고)\n악천후 시 취소",
                              style: TextStyle(
                                color: Color(0xFF1A1A1A),
                                fontSize: 16,
                                fontFamily: 'Ownglyph okticon',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            const SizedBox(height: 22),
                            Row(
                              children: [
                                SvgPicture.asset(
                                    'assets/travel_detail_icons/money_icon.svg'),
                                const SizedBox(width: 12),
                                const Text(
                                  "왕복 성인 2,220엔, 초등학생 이하 1,110엔\n(특별 선실 이용시 추가 요금 필요)",
                                  style: TextStyle(
                                    color: Color(0xFF1A1A1A),
                                    fontSize: 16,
                                    fontFamily: 'Ownglyph okticon',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            const SizedBox(height: 22),
                            Row(
                              children: [
                                SvgPicture.asset(
                                    'assets/travel_detail_icons/lightbulb_icon.svg'),
                                const SizedBox(width: 12),
                                const Text(
                                  "이용팁\n하코네 프리패스 소지 시 무료",
                                  style: TextStyle(
                                    color: Color(0xFF1A1A1A),
                                    fontSize: 16,
                                    fontFamily: 'Ownglyph okticon',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                )
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 32,
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
