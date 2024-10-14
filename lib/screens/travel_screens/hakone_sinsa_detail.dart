import 'package:flutter/material.dart';
import 'package:school_trip_app/widgets/travel_screens/basic_info.dart';
import 'package:school_trip_app/widgets/travel_screens/custom_app_bar.dart';
import 'package:school_trip_app/widgets/travel_screens/disney_componets/detail_text.dart';
import 'package:school_trip_app/widgets/travel_screens/place_discription.dart';
import 'package:school_trip_app/widgets/travel_screens/place_image_slide.dart';
import 'package:school_trip_app/widgets/travel_screens/place_name.dart';
import 'package:school_trip_app/widgets/travel_screens/review.dart';
import 'package:school_trip_app/widgets/travel_screens/star_and_heart.dart';
import 'package:school_trip_app/widgets/travel_screens/store_info.dart';

List<String> placeImageList = [
  'assets/travel_detail_images/hakone_sinsa_images/hakone_sinda_1.png',
  'assets/travel_detail_images/hakone_sinsa_images/hakone_sinsa_2.jpeg',
  'assets/travel_detail_images/hakone_sinsa_images/hakone_sinsa_3.jpeg',
  'assets/travel_detail_images/hakone_sinsa_images/hakone_sinsa_4.jpeg',
];

List<String> reviewImageList = [
  'assets/travel_detail_images/hakone_sinsa_images/hakone_sinsa_review_1.png',
  'assets/travel_detail_images/hakone_sinsa_images/hakone_sinsa_review_2.png',
  'assets/travel_detail_images/hakone_sinsa_images/hakone_sinsa_review_3.png',
];

class HakoneSinsaDetail extends StatelessWidget {
  const HakoneSinsaDetail({super.key});

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
                  PlaceName('하코네 신사', '箱根神社'),
                  StarAndHeart('3.0점', 3, '1.7만 명'),
                  const SizedBox(
                    height: 15,
                  ),
                  PlaceImageSlide(
                      placeName: "하코네 신사", imageList: placeImageList),
                  const SizedBox(
                    height: 30,
                  ),
                  PlaceDiscription(
                    "삼나무가 둘러싸고 있는 붉은 건물의 사원",
                    "assets/travel_detail_images/hakone_sinsa_images/hakone_sinsa_detail_image_1.png",
                    "붉은 목조 건물로 만들어진 신사",
                    "뜨거운 온천에 몸을 담그면 그림 같은 풍경이 눈 앞에 펼쳐진다. 깨끗한 자연 바람을 들이마시며 눈을 지그시 감으면 이곳이 바로 지상낙원! 신주쿠역에서 한 시간 남짓이면 닿을 수 있는 거리. 온천 마을, 하코네로 떠나보자.",
                    false,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  PlaceDiscription(
                    "",
                    "assets/travel_detail_images/hakone_sinsa_images/hakone_sinsa_detail_image_2.png",
                    "신사 내에 준비된 즐길 거리와 볼거리",
                    "9마리의 용을 모셔놓았다고 전해지고 있어 용 그림과 조각들이 신사 곳곳에 배치되어 있으며, 호수 쪽에서는 용을 재워 놓았다는 도리이를 볼 수 있다. 신사 내에 위치한 보물전에서는 나라 시대부터 메이지 시대까지 하코네 신사의 역사와 문화를 보여주는 조각, 회화, 문서 등을 상설 전시로 제공하며, 다양한 테마의 비정기적인 특별전도 열고 있다.",
                    true,
                  ),
                  const SizedBox(height: 30),
                  Container(
                    height: 30,
                    decoration: const BoxDecoration(color: Color(0xFFE0E0E0)),
                  ),
                  const SizedBox(height: 30),
                  BasicInfo(
                    '80-1 Motohakone, Hakone, Ashigarashimo-gun, Kanagawa 250-0522',
                    '+81-4-6083-7123',
                    'http://www.hakonejinja.or.jp',
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Column(
                        children: [
                          DetailText('하코네 등산 선 하코네유모토 역에서 차로 28분', false),
                          DetailText(
                              'Hakone lake hotel mae 정류장에서 오다큐 하코네 고속버스 이용, Hakoneodakyuyamano Hotel 정류장 하차 후 도보 10분',
                              false),
                        ],
                      ),
                    ),
                    true,
                    true,
                  ),
                  StoreInfo(
                    '영업 중 · 매일 08:15 - 17:00',
                    '무료',
                    Padding(
                      padding: const EdgeInsets.only(left: 17.0, top: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            '보물전',
                            style: TextStyle(
                              color: Color(0xBF1A1A1A),
                              fontSize: 16,
                              fontFamily: 'Ownglyph okticon',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Column(
                              children: [
                                const SizedBox(height: 5),
                                DetailText('성인(중학생 이상) 500엔', false),
                                const SizedBox(height: 5),
                                DetailText(
                                    '운영시간: 09:00 - 16:30(종료 30분 전 입장 마감)',
                                    false),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    '',
                    true,
                    true,
                    false,
                  ),
                  const SizedBox(height: 20),
                  Container(
                    height: 30,
                    decoration: const BoxDecoration(color: Color(0xFFE0E0E0)),
                  ),
                  Review(
                    reviewContext:
                        '하코네에 있는 신사로 입구에서부터 삼나무의 위용에 놀라게 될 것입니다. 신사의 나라답게 건축물과 주변 자연과 잘 어울려서 보기 좋습니다.',
                    imageList: reviewImageList,
                  ),
                  const SizedBox(height: 50),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
