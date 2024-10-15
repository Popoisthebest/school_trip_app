import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:school_trip_app/widgets/travel_screens/basic_info.dart';
import 'package:school_trip_app/widgets/travel_screens/custom_app_bar.dart';
import 'package:school_trip_app/widgets/travel_screens/place_discription.dart';
import 'package:school_trip_app/widgets/travel_screens/place_image_slide.dart';
import 'package:school_trip_app/widgets/travel_screens/place_name.dart';
import 'package:school_trip_app/widgets/travel_screens/review.dart';
import 'package:school_trip_app/widgets/travel_screens/star_and_heart.dart';

List<String> imageList = [
  "assets/travel_detail_images/odaiba_ocean_buffet_images/odaiba1.png",
  "assets/travel_detail_images/odaiba_ocean_buffet_images/odaiba2.png",
  "assets/travel_detail_images/odaiba_ocean_buffet_images/odaiba3.png",
  "assets/travel_detail_images/odaiba_ocean_buffet_images/odaiba4.png",
  "assets/travel_detail_images/odaiba_ocean_buffet_images/odaiba5.png",
  "assets/travel_detail_images/odaiba_ocean_buffet_images/odaiba6.png",
];

List<String> reviewImageList = [
  "assets/travel_detail_images/odaiba_ocean_buffet_images/odaiba8.png",
  "assets/travel_detail_images/odaiba_ocean_buffet_images/odaiba9.png",
  "assets/travel_detail_images/odaiba_ocean_buffet_images/odaiba10.png",
];

class OdaibaOceanClubBuffet extends StatelessWidget {
  const OdaibaOceanClubBuffet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          buildCustomAppBar(context, ''),
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: [
                PlaceName("오다이바 오션 클럽 뷔페", "お台場オーシャンクラブビュッフェ"),
                StarAndHeart("3.0점", 3, "124명"),
                const SizedBox(
                  height: 15,
                ),
                PlaceImageSlide(
                    placeName: "오다이바 오션 클럽 뷔페 내부", imageList: imageList),
                const SizedBox(
                  height: 30,
                ),
                PlaceDiscription(
                    "레인보우 브리지 전망의 야외 테라스를\n갖춘 뷔페 레스토랑",
                    "assets/travel_detail_images/odaiba_ocean_buffet_images/odaiba7.png",
                    "품질도 좋고 전망도 좋은 뷔페",
                    "오다이바 오션 클럽 뷔페(Odaiba Ocean Club Buffet)는 도쿄 오다이바 지역에 위치한 인기 있는 뷔페 레스토랑이다. 이곳은 바다 전망을 즐길 수 있는 멋진 위치에 있으며, 다양한 종류의 음식을 제공한다.",
                    false),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  height: 30,
                  decoration: const BoxDecoration(
                    color: Color(0xffe0e0e0),
                  ),
                ),
                const BasicInfo(
                  location:
                      'Japan, 〒135-0091 Tokyo, Minato City, Daiba, 1−6−1 デックス東京ビーチ 5F',
                  phoneNumber: '+81-3-3599-6655',
                  link:
                      'https://www.odaiba-decks.com/shop/detail/15060000?tenant_cd=15060000',
                  howToGo: Row(
                    children: [
                      Text(
                        '오다이바카이힌코엔 역에서 도보 5분, 덱스 도쿄 비치 5층',
                        style: TextStyle(
                          color: Color(0xBF1A1A1A),
                          fontSize: 14,
                          fontFamily: 'Ownglyph okticon',
                          fontWeight: FontWeight.w400,
                          height: 0.10,
                        ),
                      ),
                    ],
                  ),
                  showPhoneNumber: true,
                  showLink: true,
                  centerPosition: LatLng(35.625844, 139.775222),
                  locationName: '오다이바 오션 클럽 뷔페',
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
                              "영업 중 · 매일 11:00 - 22:00",
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
                        const SizedBox(
                          height: 22,
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(
                                'assets/travel_detail_icons/checklist.svg'),
                            const SizedBox(width: 12),
                            const Text(
                              "라스트오더 : 20:30",
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
                  ),
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(
                                'assets/travel_detail_icons/lightbulb_icon.svg'),
                            const SizedBox(width: 12),
                            const Text(
                              "이용팁",
                              style: TextStyle(
                                color: Color(0xFF1A1A1A),
                                fontSize: 16,
                                fontFamily: 'Ownglyph okticon',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          "    • 만 3세 미만 무료\n    • 주말 이용요금 상이\n    • 예약 가능(전화)",
                          style: TextStyle(
                            color: Color(0xFF1A1A1A),
                            fontSize: 12,
                            fontFamily: 'Ownglyph okticon',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(
                          height: 28,
                        ),
                        const Row(
                          children: [
                            Icon(
                              Icons.warning_rounded,
                              size: 20,
                              color: Color(0xff757575),
                            ),
                            SizedBox(width: 12),
                            Text(
                              "알레르기 유발 품목",
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
                        const SizedBox(height: 4),
                        const Padding(
                          padding: EdgeInsets.only(right: 20, left: 32),
                          child: Text(
                            "난류, 우유, 땅콩, 대두, 밀, 새우, 돼지고기, 토마토, 호두, 닭고기, 쇠고기, 잣",
                            style: TextStyle(
                              color: Color(0xFF1A1A1A),
                              fontSize: 12,
                              fontFamily: 'Ownglyph okticon',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 30,
                  decoration: const BoxDecoration(
                    color: Color(0xffe0e0e0),
                  ),
                ),
                Review(
                    reviewContext:
                        "도쿄에서 많은 인원을 수용할 수 있는 식당은 많지 않고 그나마 이곳이 5개반을 수용할 수 있는 뷔페식당입니다. 종류는 다양하게 있고 맛도 보통 정도에요.(뷔페를 좋아하지 않는 개인적인 성향도 반영됨.)",
                    imageList: reviewImageList),
                const SizedBox(height: 50)
              ],
            ),
          ))
        ],
      ),
    );
  }
}
