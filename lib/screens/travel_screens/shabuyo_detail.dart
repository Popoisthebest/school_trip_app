import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:school_trip_app/widgets/travel_screens/basic_info.dart';
import 'package:school_trip_app/widgets/travel_screens/custom_app_bar.dart';
import 'package:school_trip_app/widgets/travel_screens/place_discription.dart';
import 'package:school_trip_app/widgets/travel_screens/place_image_slide.dart';
import 'package:school_trip_app/widgets/travel_screens/place_name.dart';
import 'package:school_trip_app/widgets/travel_screens/review.dart';
import 'package:school_trip_app/widgets/travel_screens/star_and_heart.dart';
import 'package:url_launcher/url_launcher.dart';

List<String> imageList = [
  "assets/travel_detail_images/shabuyo_images/shabuyo1.png",
  "assets/travel_detail_images/shabuyo_images/shabuyo2.png",
  "assets/travel_detail_images/shabuyo_images/shabuyo3.png",
  "assets/travel_detail_images/shabuyo_images/shabuyo4.png",
];

List<String> reviewImageList = [
  "assets/travel_detail_images/shabuyo_images/shabuyo5.png",
  "assets/travel_detail_images/shabuyo_images/shabuyo6.png",
  "assets/travel_detail_images/shabuyo_images/shabuyo7.png",
];

class ShabuyoDetail extends StatelessWidget {
  const ShabuyoDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          buildCustomAppBar(),
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: [
                PlaceName("샤브요", "しゃぶ葉 四谷店"),
                StarAndHeart("4.0점", 4, "328명"),
                const SizedBox(
                  height: 15,
                ),
                PlaceImageSlide(placeName: "샤브요 내부", imageList: imageList),
                const SizedBox(
                  height: 30,
                ),
                PlaceDiscription(
                    "다양한 고기를 샤부샤부로 마음껏\n즐길 수 있는 무한 리필 뷔페",
                    "assets/travel_detail_images/shabuyo_images/shabuyo5.png",
                    "일본의 고기 샤부샤부\n무한 리필 뷔페 체인점이다.",
                    "샤브요(Shabu-yo)는 일본의 유명한 샤부샤부 전문 레스토랑으로, 무한리필 서비스를 제공하는 것이 특징이다. 고객은 다양한 고기와 신선한 채소를 선택하여 자신만의 샤부샤부를 만들 수 있으며, 여러 가지 육수와 소스도 선택할 수 있다. 식사는 보통 100분의 시간 제한이 있으며, 점심과 저녁에 따라 가격이 다르게 책정된다. 쾌적한 분위기 속에서 식사를 즐길 수 있어 가족 및 친구들과 함께 방문하기에 좋은 장소다.",
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
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
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
                                'assets/store_map_images/akihabara_store1_image.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            "고탄다점",
                            style: const TextStyle(
                              fontFamily: "Ownglyph okticon",
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff1a1a1a),
                              height: 26 / 20,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xff4d9e8a),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10.0, vertical: 15.0),
                              child: Column(
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SvgPicture.asset(
                                          'assets/travel_detail_icons/crosshair_icons.svg'),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Flexible(
                                        child: Text(
                                          "3 Chome-7-2 Ebara, Shinagawa City, Tokyo 142-0063, Japan",
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
                                  Column(
                                    children: [
                                      const SizedBox(height: 10),
                                      Row(
                                        children: [
                                          SvgPicture.asset(
                                              'assets/travel_detail_icons/phone_icon.svg'),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Flexible(
                                            child: Text(
                                              "+81-3-5750-0431",
                                              style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,
                                                fontFamily: 'Ownglyph okticon',
                                                fontWeight: FontWeight.w400,
                                                height: 0,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      const SizedBox(height: 10),
                                      GestureDetector(
                                        onTap: () {
                                          launchUrl(Uri.parse(
                                              "https://www.skylark.co.jp/syabuyo/menu/index.html?utm_source=ss&utm_medium=gmb&utm_campaign=menu-Tokyo"));
                                        },
                                        child: Row(
                                          children: [
                                            SvgPicture.asset(
                                                'assets/travel_detail_icons/link_icon.svg'),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Flexible(
                                              child: Text(
                                                "https://www.skylark.co.jp/syabuyo/menu/index.html?utm_source=ss&utm_medium=gmb&utm_campaign=menu-Tokyo",
                                                style: const TextStyle(
                                                  color: Color(0xFFC2E4FF),
                                                  fontSize: 16,
                                                  fontFamily:
                                                      'Ownglyph okticon',
                                                  fontWeight: FontWeight.w400,
                                                  decoration:
                                                      TextDecoration.underline,
                                                  decorationColor:
                                                      Color(0xffC2E4FF),
                                                  height: 0,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: const Color(0xff4d9e8a)),
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
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            "요츠야점",
                            style: const TextStyle(
                              fontFamily: "Ownglyph okticon",
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff1a1a1a),
                              height: 26 / 20,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xff4d9e8a),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10.0, vertical: 15.0),
                              child: Column(
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SvgPicture.asset(
                                          'assets/travel_detail_icons/crosshair_icons.svg'),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Flexible(
                                        child: Text(
                                          "Japan 〒160-0004 Tokyo, Shinjuku City, Yotsuya, 2 Chome−１−3 ２１３ビル ２Ｆ",
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
                                  Column(
                                    children: [
                                      const SizedBox(height: 10),
                                      Row(
                                        children: [
                                          SvgPicture.asset(
                                              'assets/travel_detail_icons/phone_icon.svg'),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Flexible(
                                            child: Text(
                                              "+81-3-5369-6016",
                                              style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,
                                                fontFamily: 'Ownglyph okticon',
                                                fontWeight: FontWeight.w400,
                                                height: 0,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      const SizedBox(height: 10),
                                      GestureDetector(
                                        onTap: () {
                                          launchUrl(Uri.parse(
                                              "https://www.skylark.co.jp/syabuyo/menu/index.html?utm_source=ss&utm_medium=gmb&utm_campaign=menu-Tokyo"));
                                        },
                                        child: Row(
                                          children: [
                                            SvgPicture.asset(
                                                'assets/travel_detail_icons/link_icon.svg'),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Flexible(
                                              child: Text(
                                                "https://www.skylark.co.jp/syabuyo/menu/index.html?utm_source=ss&utm_medium=gmb&utm_campaign=menu-Tokyo",
                                                style: const TextStyle(
                                                  color: Color(0xFFC2E4FF),
                                                  fontSize: 16,
                                                  fontFamily:
                                                      'Ownglyph okticon',
                                                  fontWeight: FontWeight.w400,
                                                  decoration:
                                                      TextDecoration.underline,
                                                  decorationColor:
                                                      Color(0xffC2E4FF),
                                                  height: 0,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: const Color(0xff4d9e8a)),
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
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            "신주쿠점",
                            style: const TextStyle(
                              fontFamily: "Ownglyph okticon",
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff1a1a1a),
                              height: 26 / 20,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xff4d9e8a),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10.0, vertical: 15.0),
                              child: Column(
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SvgPicture.asset(
                                          'assets/travel_detail_icons/crosshair_icons.svg'),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Flexible(
                                        child: Text(
                                          "1 Chome-33-14 Takadanobaba, Shinjuku City, Tokyo 169-0075, Japan",
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
                                  Column(
                                    children: [
                                      const SizedBox(height: 10),
                                      Row(
                                        children: [
                                          SvgPicture.asset(
                                              'assets/travel_detail_icons/phone_icon.svg'),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Flexible(
                                            child: Text(
                                              "+81-3-5286-7250",
                                              style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,
                                                fontFamily: 'Ownglyph okticon',
                                                fontWeight: FontWeight.w400,
                                                height: 0,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      const SizedBox(height: 10),
                                      GestureDetector(
                                        onTap: () {
                                          launchUrl(Uri.parse(
                                              "https://www.skylark.co.jp/syabuyo/menu/index.html?utm_source=ss&utm_medium=gmb&utm_campaign=menu-Tokyo"));
                                        },
                                        child: Row(
                                          children: [
                                            SvgPicture.asset(
                                                'assets/travel_detail_icons/link_icon.svg'),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Flexible(
                                              child: Text(
                                                "https://www.skylark.co.jp/syabuyo/menu/index.html?utm_source=ss&utm_medium=gmb&utm_campaign=menu-Tokyo",
                                                style: const TextStyle(
                                                  color: Color(0xFFC2E4FF),
                                                  fontSize: 16,
                                                  fontFamily:
                                                      'Ownglyph okticon',
                                                  fontWeight: FontWeight.w400,
                                                  decoration:
                                                      TextDecoration.underline,
                                                  decorationColor:
                                                      Color(0xffC2E4FF),
                                                  height: 0,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: const Color(0xff4d9e8a)),
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
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ],
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
                            Text(
                              "영업 중 · 매일 11:00 - 23:00",
                              style: const TextStyle(
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
                            Text(
                              "라스트오더 : 21:30",
                              style: const TextStyle(
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
                            Text(
                              "이용팁",
                              style: const TextStyle(
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
                        Text(
                          "    • 육수 선택 가능\n     * 한 냄비에 4가지 맛 선택 시 440엔 추가*\n    • 런치 뷔페 이용 제한 시간 없음.\n    • 디너 뷔페 이용 제한 시간 100분\n    • 테이크 아웃 가능",
                          style: const TextStyle(
                            color: Color(0xFF1A1A1A),
                            fontSize: 12,
                            fontFamily: 'Ownglyph okticon',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(
                          height: 28,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.warning_rounded,
                              size: 20,
                              color: Color(0xff757575),
                            ),
                            const SizedBox(width: 12),
                            Text(
                              "알레르기 유발 품목",
                              style: const TextStyle(
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
                        Padding(
                          padding: EdgeInsets.only(right: 20, left: 32),
                          child: Text(
                            "난류, 우유, 땅콩, 대두, 밀, 새우, 돼지고기, 토마토, 호두, 닭고기, 쇠고기, 잣",
                            style: const TextStyle(
                              color: Color(0xFF1A1A1A),
                              fontSize: 12,
                              fontFamily: 'Ownglyph okticon',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
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
                        "샤브요는 이름처럼 샤부샤부 식당이며 우리나라에서 먹는 샤부샤부와 큰 맛의 차이가 없습니다. 고기가 무한리필이기 때문에 처음부터 너무 주문하면 나중에 다 못먹어서 패널티를 물을 수도 있으니까 남기지 마세요. 맛있었습니다.",
                    imageList: reviewImageList),
                const SizedBox(height: 50)
              ],
            ),
          )),
        ],
      ),
    );
  }
}
