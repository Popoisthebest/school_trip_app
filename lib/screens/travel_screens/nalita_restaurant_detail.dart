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
  'assets/travel_detail_images/odaiba_images/odaiba_rainbow_bridge_image.png',
  'assets/travel_detail_images/odaiba_images/odaiba_wheel_image.png',
  'assets/travel_detail_images/odaiba_images/odaiba_river_image.png',
];

List<String> reviewImageList = [
  'assets/travel_detail_images/odaiba_images/odaiba_review_image1.jpeg',
  'assets/travel_detail_images/odaiba_images/odaiba_review_image2.jpeg',
  'assets/travel_detail_images/odaiba_images/odaiba_review_image3.png',
];

class NalitaRestaurantDetailScreen extends StatelessWidget {
  const NalitaRestaurantDetailScreen({super.key});

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
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              '나리타 공항 맛집 11곳 바로가기!',
                              style: TextStyle(
                                color: Color(0xFF1A1A1A),
                                fontSize: 24,
                                fontFamily: 'Ownglyph okticon',
                                fontWeight: FontWeight.w700,
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Flexible(
                              child: Text(
                                '공항에서도 일본의 맛 탐방은 계속된다. 스시부터 소바 그리고 라멘까지. 이외에도 중식도 판매해 취향껏 골라 먹기 문제없다.',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Ownglyph okticon',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    height: 2,
                    decoration: const BoxDecoration(
                      color: Color(0x3F1A1A1A),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      children: [
                        const SizedBox(height: 46),
                        const Row(
                          children: [
                            Text(
                              '일류 셰프가 만든 진짜 소바, 세이요켄',
                              style: TextStyle(
                                color: Color(0xFF1A1A1A),
                                fontSize: 16,
                                fontFamily: 'Ownglyph okticon',
                                fontWeight: FontWeight.w700,
                              ),
                            )
                          ],
                        ),
                        const Row(
                          children: [
                            Flexible(
                              child: Text(
                                '일류 호텔에서 수행한 셰프가 요리하는 다양한 본격 중화 소바. 고모쿠 소바, 산라탕면, 돼지고기 잔채 야키소바가 TOP 3 인기 메뉴이다.',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Ownglyph okticon',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 30),
                        SizedBox(
                          width: double.infinity,
                          height: 313,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/travel_detail_images/nalita_restaurant/nalita_restaurant_food1_image.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(height: 50),
                      ],
                    ),
                  ),
                  Container(
                    height: 2,
                    decoration: const BoxDecoration(
                      color: Color(0x3F1A1A1A),
                    ),
                  ),
                  const SizedBox(height: 46),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      children: [
                        const Row(
                          children: [
                            Text(
                              '식감이 살아있는 도삭면의 매력, 탕 다이너스티',
                              style: TextStyle(
                                color: Color(0xFF1A1A1A),
                                fontSize: 16,
                                fontFamily: 'Ownglyph okticon',
                                fontWeight: FontWeight.w700,
                              ),
                            )
                          ],
                        ),
                        const Row(
                          children: [
                            Flexible(
                              child: Text(
                                '중국이 고도 시안에서 초빙한 요리사들이 만드는 정통 요리. 특히 중국 산시성에서 유명한 따오샤오미엔(도삭면, 刀削麵)을 꼭 먹어볼 것',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Ownglyph okticon',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 30),
                        SizedBox(
                          width: double.infinity,
                          height: 250,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/travel_detail_images/nalita_restaurant/nalita_restaurant_food2_image.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(height: 50),
                      ],
                    ),
                  ),
                  Container(
                    height: 2,
                    decoration: const BoxDecoration(
                      color: Color(0x3F1A1A1A),
                    ),
                  ),
                  const SizedBox(height: 46),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      children: [
                        const Row(
                          children: [
                            Flexible(
                              child: Text(
                                '본토의 맛집을 공항에서 만나다, 니혼노 중화소바 토미타',
                                style: TextStyle(
                                  color: Color(0xFF1A1A1A),
                                  fontSize: 16,
                                  fontFamily: 'Ownglyph okticon',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            )
                          ],
                        ),
                        const Row(
                          children: [
                            Flexible(
                              child: Text(
                                '지바현 마쓰도시의 이름난 맛집, ‘추카 소바 도미타’의 나리타 국제공항 분점. 일본 전통 라멘 맛을 제대로 살렸다는 평가를 받고 있다.',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Ownglyph okticon',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 30),
                        SizedBox(
                          width: double.infinity,
                          height: 225,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/travel_detail_images/nalita_restaurant/nalita_restaurant_food3_image.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(height: 50),
                      ],
                    ),
                  ),
                  Container(
                    height: 2,
                    decoration: const BoxDecoration(
                      color: Color(0x3F1A1A1A),
                    ),
                  ),
                  const SizedBox(height: 46),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      children: [
                        const Row(
                          children: [
                            Flexible(
                              child: Text(
                                '장인의 손길이 느껴지는 생선 요리, 쓰키지 스시이와',
                                style: TextStyle(
                                  color: Color(0xFF1A1A1A),
                                  fontSize: 16,
                                  fontFamily: 'Ownglyph okticon',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            )
                          ],
                        ),
                        const Row(
                          children: [
                            Flexible(
                              child: Text(
                                '생선을 소금으로 숙성시키고, 다시마로 싸고, 절이고, 삶고, 굽고! 다이쇼 시대부터 이어져 내려온 ‘전통’과 제철 어패류의 맛을 극한까지 끌어내는 장인의 ‘기술’을 간직한 맛집.',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Ownglyph okticon',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 30),
                        SizedBox(
                          width: double.infinity,
                          height: 187,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/travel_detail_images/nalita_restaurant/nalita_restaurant_food4_image.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(height: 50),
                      ],
                    ),
                  ),
                  Container(
                    height: 2,
                    decoration: const BoxDecoration(
                      color: Color(0x3F1A1A1A),
                    ),
                  ),
                  const SizedBox(height: 46),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      children: [
                        const Row(
                          children: [
                            Flexible(
                              child: Text(
                                '일본식 양식의 기묘한 조화로움, 스파게티 고에몬',
                                style: TextStyle(
                                  color: Color(0xFF1A1A1A),
                                  fontSize: 16,
                                  fontFamily: 'Ownglyph okticon',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            )
                          ],
                        ),
                        const Row(
                          children: [
                            Flexible(
                              child: Text(
                                '젓가락으로 먹는 스파게티 전문점. 고에몬 가마(대형 가마)에서 정성 들여 삶는 면이 특징이다. 스파게티, 올리브유, 치즈 등 이탈리아에서 직수입한 식자재를 엄선해 사용한다.',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Ownglyph okticon',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 30),
                        SizedBox(
                          width: double.infinity,
                          height: 225,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/travel_detail_images/nalita_restaurant/nalita_restaurant_food5_image.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(height: 50),
                      ],
                    ),
                  ),
                  Container(
                    height: 2,
                    decoration: const BoxDecoration(
                      color: Color(0x3F1A1A1A),
                    ),
                  ),
                  const SizedBox(height: 46),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      children: [
                        const Row(
                          children: [
                            Flexible(
                              child: Text(
                                '역사와 전통이 살아있는 소바, 나가사카 사라시네 누노야타헤',
                                style: TextStyle(
                                  color: Color(0xFF1A1A1A),
                                  fontSize: 16,
                                  fontFamily: 'Ownglyph okticon',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            )
                          ],
                        ),
                        const Row(
                          children: [
                            Flexible(
                              child: Text(
                                '2세기에 걸쳐 사랑받아 온 오랜 전통의 소바점. 목 넘김이 좋은 ‘고젠소바’, 변발이 굵은 100% 메밀의 ‘기코치 소바’, 80% 메밀로 만든 ‘타헤 소바’ 등 매력적인 메뉴가 많다.',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Ownglyph okticon',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 30),
                        SizedBox(
                          width: double.infinity,
                          height: 252,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/travel_detail_images/nalita_restaurant/nalita_restaurant_food6_image.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(height: 50),
                      ],
                    ),
                  ),
                  Container(
                    height: 2,
                    decoration: const BoxDecoration(
                      color: Color(0x3F1A1A1A),
                    ),
                  ),
                  const SizedBox(height: 46),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      children: [
                        const Row(
                          children: [
                            Flexible(
                              child: Text(
                                '후쿠오카의 유명 라멘을 공항에서, 잇푸도',
                                style: TextStyle(
                                  color: Color(0xFF1A1A1A),
                                  fontSize: 16,
                                  fontFamily: 'Ownglyph okticon',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            )
                          ],
                        ),
                        const Row(
                          children: [
                            Flexible(
                              child: Text(
                                '후쿠오카에서 1985년 시작한 라멘집으로 일본 전국 라멘 경연 대회에서 여러 번 우승을 거머쥐었던 곳이다. 특히 창립 당시부터 현재까지 그 맛을 유지하고 있는 돈코츠 라멘의 진한 국물은 일품. 라멘은 주문 후 5년 안에 나와 바쁘더라도 시도해보길 추천한다.',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Ownglyph okticon',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 30),
                        SizedBox(
                          width: double.infinity,
                          height: 271,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/travel_detail_images/nalita_restaurant/nalita_restaurant_food7_image.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(height: 50),
                      ],
                    ),
                  ),
                  Container(
                    height: 2,
                    decoration: const BoxDecoration(
                      color: Color(0x3F1A1A1A),
                    ),
                  ),
                  const SizedBox(height: 46),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      children: [
                        const Row(
                          children: [
                            Flexible(
                              child: Text(
                                '일본 전통 카레의 매력, 라 토크',
                                style: TextStyle(
                                  color: Color(0xFF1A1A1A),
                                  fontSize: 16,
                                  fontFamily: 'Ownglyph okticon',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            )
                          ],
                        ),
                        const Row(
                          children: [
                            Flexible(
                              child: Text(
                                '일본 전통 식재료를 활용한 일본식 카레를 맛볼 수 있는 곳. 외국인들에게 더 인끼가 좋다. 인테리어도 밝고 캐주얼해 기분 좋게 식사를 즐길 수 있다.',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Ownglyph okticon',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 30),
                        SizedBox(
                          width: double.infinity,
                          height: 225,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/travel_detail_images/nalita_restaurant/nalita_restaurant_food8_image.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(height: 50),
                      ],
                    ),
                  ),
                  Container(
                    height: 2,
                    decoration: const BoxDecoration(
                      color: Color(0x3F1A1A1A),
                    ),
                  ),
                  const SizedBox(height: 46),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      children: [
                        const Row(
                          children: [
                            Flexible(
                              child: Text(
                                '출국 전, 기분 좋은 일본 음식을 만나다, 미소 키친',
                                style: TextStyle(
                                  color: Color(0xFF1A1A1A),
                                  fontSize: 16,
                                  fontFamily: 'Ownglyph okticon',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            )
                          ],
                        ),
                        const Row(
                          children: [
                            Flexible(
                              child: Text(
                                '일본식 된장인 미소를 기본 재료로 만든 일본만의 독특하면서도 다양한 먹거리를 만날 수 있다.',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Ownglyph okticon',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 30),
                        SizedBox(
                          width: double.infinity,
                          height: 225,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/travel_detail_images/nalita_restaurant/nalita_restaurant_food9_image.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(height: 50),
                      ],
                    ),
                  ),
                  Container(
                    height: 2,
                    decoration: const BoxDecoration(
                      color: Color(0x3F1A1A1A),
                    ),
                  ),
                  const SizedBox(height: 46),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      children: [
                        const Row(
                          children: [
                            Flexible(
                              child: Text(
                                '사누키 지방 직송 반죽으로 만든 면, 미야타케 사누키 우동',
                                style: TextStyle(
                                  color: Color(0xFF1A1A1A),
                                  fontSize: 16,
                                  fontFamily: 'Ownglyph okticon',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            )
                          ],
                        ),
                        const Row(
                          children: [
                            Flexible(
                              child: Text(
                                '우동의 본고장인 사누키 지방의 ‘미야타케 사누키 제면소’에서 직송 받은 반죽으로 만든 우동을 맛볼 수 있다. 쫄깃쫄깃한 우동 면과 멸치 육수가 어우러져 시원한 맛을 낸다.',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Ownglyph okticon',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 30),
                        SizedBox(
                          width: double.infinity,
                          height: 235,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/travel_detail_images/nalita_restaurant/nalita_restaurant_food10_image.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(height: 50),
                      ],
                    ),
                  ),
                  Container(
                    height: 2,
                    decoration: const BoxDecoration(
                      color: Color(0x3F1A1A1A),
                    ),
                  ),
                  const SizedBox(height: 46),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      children: [
                        const Row(
                          children: [
                            Flexible(
                              child: Text(
                                '출국 전 맛보는 마지막 스시, 타츠 스시',
                                style: TextStyle(
                                  color: Color(0xFF1A1A1A),
                                  fontSize: 16,
                                  fontFamily: 'Ownglyph okticon',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            )
                          ],
                        ),
                        const Row(
                          children: [
                            Flexible(
                              child: Text(
                                '참치와 해산물을 일본 산 쌀에 식초와 소금으로만 간을 한 전통 에도식 초밥을 파는 곳. 출국 시간이 부족한 여행객을 위하여 포장 판매도 제공한다.',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Ownglyph okticon',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 30),
                        SizedBox(
                          width: double.infinity,
                          height: 225,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/travel_detail_images/nalita_restaurant/nalita_restaurant_food11_image.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(height: 90),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
