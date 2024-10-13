import 'package:flutter/material.dart';
import 'package:school_trip_app/widgets/travel_screens/basic_info.dart';
import 'package:school_trip_app/widgets/travel_screens/custom_app_bar.dart';
import 'package:school_trip_app/widgets/travel_screens/main_store.dart';
import 'package:school_trip_app/widgets/travel_screens/place_discription.dart';
import 'package:school_trip_app/widgets/travel_screens/place_image_slide.dart';
import 'package:school_trip_app/widgets/travel_screens/place_name.dart';
import 'package:school_trip_app/widgets/travel_screens/review.dart';
import 'package:school_trip_app/widgets/travel_screens/star_and_heart.dart';

List<String> placeImageList = [
  'assets/travel_detail_images/hakone_images/hakone_hot_spring_image.png',
];

List<String> reviewImageList = [
  'assets/travel_detail_images/hakone_images/hakone_review1_image.png',
  'assets/travel_detail_images/hakone_images/hakone_review2_image.png',
  'assets/travel_detail_images/hakone_images/hakone_review3_image.png',
];

class HakoneDetailScreen extends StatelessWidget {
  const HakoneDetailScreen({super.key});

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
                  PlaceName("하코네", "箱根"),
                  StarAndHeart("3.0점", 3, "1만 명"),
                  const SizedBox(
                    height: 15,
                  ),
                  PlaceImageSlide(
                      placeName: "하코네 온천마을", imageList: placeImageList),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            Text(
                              '최고의 온천 마을, 하코네',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Ownglyph okticon',
                                color:
                                    const Color(0xFF1A1A1A).withOpacity(0.75),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          width: double.infinity,
                          height: 220,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/travel_detail_images/hakone_images/hakone_hot_spring2_image.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Flexible(
                              child: Text(
                                  '뜨거운 온천에 몸을 담그면 그림 같은 풍경이 눈 앞에 펼쳐진다. 깨끗한 자연 바람을 들이마시며 눈을 지그시 감으면 이곳이 바로 지상낙원! 신주쿠역에서 한 시간 남짓이면 닿을 수 있는 거리. 온천 마을, 하코네로 떠나보자.',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Ownglyph okticon',
                                    color: const Color(0xFF1A1A1A)
                                        .withOpacity(0.75),
                                  )),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            Text(
                              '하코네 온천',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Ownglyph okticon',
                                color:
                                    const Color(0xFF1A1A1A).withOpacity(0.75),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          width: double.infinity,
                          height: 220,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/travel_detail_images/hakone_images/hakone_hot_spring3_image.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Flexible(
                              child: Text(
                                  '동화 속에 들어온 듯한 분위기를 선사하는 디즈니랜드. 시그니처인 신데렐라 성, 퍼레이드와 함께 디즈니랜드의 7가지 테마를 즐기다 보면 어느새 동심으로 돌아가 있는 모습을 발견할 것이다. 디즈니랜드 완전 정복을 꿈꾼다면 대표 어트랙션과 디즈니 팝콘 통도 놓치지 말 것!',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Ownglyph okticon',
                                    color: const Color(0xFF1A1A1A)
                                        .withOpacity(0.75),
                                  )),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  PlaceDiscription(
                    "하코네 대표 명소",
                    "assets/travel_detail_images/hakone_images/hakone_hot_spring4_image.png",
                    "온천 숙소에서 하룻밤, 하코네 유모토",
                    "온천 시설을 갖춘 숙소가 모인 대표적인 하코네 명소. 신주쿠 역을 출발해 가장 먼저 닿는 역이기 때문에 하코네 여행의 거점으로 삼기 좋다. 역사를 중심으로 특산품과 기념품을 판매하는 상점가가 있어 온천 마을 특유의 분위기를 즐길 수 있다.",
                  ),
                  const SizedBox(height: 20),
                  Container(
                    height: 2,
                    decoration: const BoxDecoration(
                      color: Color(0x3F1A1A1A),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            Text(
                              '대표적인 온천 마을, 미야노시타',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Ownglyph okticon',
                                color:
                                    const Color(0xFF1A1A1A).withOpacity(0.75),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          width: double.infinity,
                          height: 220,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/travel_detail_images/hakone_images/hakone_hot_spring5_image.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Flexible(
                              child: Text(
                                  '휴양을 목적으로 하코네를 찾는 여행자들에게 인기 만점. 명성에 비해 규모가 크진 않지만 하코네 대표 온천 휴양지 ‘후지야호텔’, 그 주변 유명한 산책로 ‘채플린 산보도’, 온천 신을 모시는 구마노 신사, 다양한 상점 구경의 묘미를 즐길 수 있는 세피아도리 등 볼거리는 풍부하다.',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Ownglyph okticon',
                                    color: const Color(0xFF1A1A1A)
                                        .withOpacity(0.75),
                                  )),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 50),
                  Container(
                    height: 2,
                    decoration: const BoxDecoration(
                      color: Color(0x3F1A1A1A),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            Text(
                              '지루할 틈이 없는, 고와쿠다니',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Ownglyph okticon',
                                color:
                                    const Color(0xFF1A1A1A).withOpacity(0.75),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          width: double.infinity,
                          height: 220,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/travel_detail_images/hakone_images/hakone_hot_spring6_image.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Flexible(
                              child: Text(
                                  '지중해풍 온천 테마파크인 ‘유넷산’ 등 다채로운 숙박시설과 놀이시설이 있는 하코네 유일의 온천 레저 명소. 좀 더 활력 있고 에너지 넘치는 온천 투어를 기대하는 여행객들에게 안성맞춤.',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Ownglyph okticon',
                                    color: const Color(0xFF1A1A1A)
                                        .withOpacity(0.75),
                                  )),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 50),
                  Container(
                    height: 2,
                    decoration: const BoxDecoration(
                      color: Color(0x3F1A1A1A),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            Text(
                              '펄펄끓는 유황을 두눈으로, 오와쿠다니',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Ownglyph okticon',
                                color:
                                    const Color(0xFF1A1A1A).withOpacity(0.75),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          width: double.infinity,
                          height: 220,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/travel_detail_images/hakone_images/hakone_hot_spring7_image.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Flexible(
                              child: Text(
                                  '일본의 독특한 지형 문화를 두 눈으로 생생하게 볼 수 있는 오와쿠다니 지역은 하코네 여행의 하이라이트. 공중에 매달려 유황 연기를 내뿜는 화산지대를 내려다보는 기분은 오싹하면서도 신난다. 아무리 배가 불러도 이곳 명물인 ‘검은 달걀(쿠로타마고)’은 꼭 먹어보자.',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Ownglyph okticon',
                                    color: const Color(0xFF1A1A1A)
                                        .withOpacity(0.75),
                                  )),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    height: 30,
                    decoration: const BoxDecoration(
                      color: Color(0xffe0e0e0),
                    ),
                  ),
                  Review(
                    reviewContext:
                        '오다이바는 도쿄의 도시개발에 의한 신도시 같은 느낌이며 이곳은 점심식사나 저녁식사를 위해 경유하는 정도의 느낌입니다. 화려한 야경을 기대할 만한 곳은 아니에요.',
                    imageList: reviewImageList,
                  ),
                  const SizedBox(height: 50)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
