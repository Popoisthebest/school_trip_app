// 이수호 작업 공간

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TravelLocation extends StatelessWidget {
  const TravelLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0XFF4D9E8A),
          flexibleSpace: Padding(
            padding: const EdgeInsets.only(top: 17.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 21.0),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                          'assets/app_bar_icons/leftcare_icon.svg'),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Row(
                    children: [
                      SvgPicture.asset('assets/app_bar_icons/search_icon.svg'),
                      const SizedBox(width: 15),
                      SvgPicture.asset('assets/app_bar_icons/map_icon.svg'),
                      const SizedBox(width: 3),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Text(
                          '아키하바라',
                          style: TextStyle(
                            color: Color(0xFF1A1A1A),
                            fontSize: 24,
                            fontFamily: 'Ownglyph okticon',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "秋葉原",
                          style: TextStyle(
                            color: Color(0xFF1A1A1A),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Ownglyph okticon',
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xff71b1a1),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 22.0),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                                'assets/travel_screen_icons/filled_star_icons.svg'),
                            SvgPicture.asset(
                                'assets/travel_screen_icons/filled_star_icons.svg'),
                            SvgPicture.asset(
                                'assets/travel_screen_icons/filled_star_icons.svg'),
                            SvgPicture.asset(
                                'assets/travel_screen_icons/filled_star_icons.svg'),
                            SvgPicture.asset(
                                'assets/travel_screen_icons/filled_star_icons.svg'),
                            const SizedBox(
                              width: 11.5,
                            ),
                            const Text(
                              "152 후기",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Ownglyph okticon',
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 37.0),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                                'assets/travel_screen_icons/filled_heart_icons.svg'),
                            const SizedBox(width: 10),
                            const Text(
                              "138명",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Ownglyph okticon',
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Column(
                children: [
                  Container(
                    height: 2, // 선의 높이
                    color: const Color(0XFF4D9E8A), // 초록색 선
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(
                                'assets/travel_screen_icons/map_pin_icons.svg'),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              "아키하바라 전자거리",
                              style: TextStyle(
                                color: Color(0xFF1A1A1A),
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Ownglyph okticon',
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 9,
                        ),
                        Stack(
                          children: [
                            Image.asset(
                              'assets/background_imgaes/akihabara1_image.png',
                              width: 355,
                              height: 220,
                              fit: BoxFit.contain,
                            ),
                            Positioned(
                              top: 10,
                              right: 10,
                              child: Container(
                                height: 23,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: const Color(0x7fffffff),
                                ),
                                child: const Row(
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 7.5),
                                      child: Text(
                                        "8/29",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  ],
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
                  Container(
                    height: 2, // 선의 높이
                    color: const Color(0XFF4D9E8A), // 초록색 선
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          '다양한 애니메이션 관련 제품을 \n만날 수 있는 일본 대표 오타로드',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Ownglyph okticon',
                            color: const Color(0xFF1A1A1A).withOpacity(0.75),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Image.asset(
                      'assets/background_imgaes/akihabara2_image.png',
                      width: 355,
                      height: 220,
                      fit: BoxFit.contain,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Text(
                          '게임과 재패니메이션 매니아들의 성지',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Ownglyph okticon',
                            color: const Color(0xFF1A1A1A).withOpacity(0.75),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    Row(children: [
                      Flexible(
                        child: Text(
                            "연간 수백만 명 이상의 여행객이 방문하는, 게임과 애니메이션 매니아들의 성지이다. 거리 곳곳에 게임관련 매장과 오락실, 코스프레 샵들이 들어서 있으며, ‘갓챠(일본식 뽑기 게임)’를 즐길 수 있는 곳도 많다. 특별한 관심이 없더라도 일본 특유의 서브 컬쳐 문화를 보고 느끼고 싶다면 한번 방문해보는 것도 좋다.",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Ownglyph okticon',
                              color: const Color(0xFF1A1A1A).withOpacity(0.75),
                            )),
                      ),
                    ]),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: Text(
                          '주요 매장',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Ownglyph okticon',
                            color: Color(0xFF1A1A1A),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Row(
                        children: [
                          ImportantStoreCard(
                            stimagePath:
                                'assets/background_imgaes/store_image.png',
                            stname: "매장1",
                            stintroduce: '간단한설명간단한설명간단한설명간단한설명간단한설명',
                          ),
                          ImportantStoreCard(
                              stimagePath:
                                  'assets/background_imgaes/store_image.png',
                              stname: '매장2',
                              stintroduce: '간단한설명간단한설명간단한설명간단한설명간단한설명'),
                          ImportantStoreCard(
                              stimagePath:
                                  'assets/background_imgaes/store_image.png',
                              stname: '매장3',
                              stintroduce: '간단한설명간단한설명간단한설명간단한설명간단한설명'),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  )
                ],
              ),
              Container(
                height: 30,
                decoration: const BoxDecoration(
                  color: Color(0xffe0e0e0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
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
                    Image.asset(
                        'assets/store_map_images/akihabara_store1_image.png'),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xff4d9e8a),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 7.0),
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 8,
                            ),
                            SvgPicture.asset(
                                'assets/travel_screen_icons/crosshair_icons.svg'),
                            const SizedBox(
                              width: 10,
                            ),
                            const Flexible(
                              child: Text(
                                '일본 〒101-0021 도쿄도 치요다구 소토칸다 1초메 16',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                  fontFamily: 'Ownglyph okticon',
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: const Color(0xff4d9e8a)),
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
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
                      children: [
                        Text(
                          '가는법',
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
                      height: 10,
                    ),
                    const Row(
                      children: [
                        Text(
                          "JR 아키하바라역 전자상가 출구에서 도보 5분",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Ownglyph okticon',
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ),
              Container(
                height: 30,
                decoration: const BoxDecoration(
                  color: Color(0xffe0e0e0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
                      children: [
                        Text(
                          '리뷰',
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
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(
                                'assets/travel_screen_icons/profil_icons.svg'),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              '오세철님의 리뷰',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Ownglyph okticon',
                                color: Color(0xFF1A1A1A),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(
                                'assets/travel_screen_icons/three_dots_vertical_icons.svg'),
                            const SizedBox(
                              width: 10,
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      children: [
                        Flexible(
                            child: Text(
                          "전철로 아키하바라에 오게되면 가장 먼저 보게되는 풍경. 아키바는 역규모가 크다보니,출구도 여러개인데요, 전기거리 개찰구(電気街改札口)로 나오시면 됩니다... 더보기",
                          style: TextStyle(
                            fontFamily: "Ownglyph okticon",
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                          textAlign: TextAlign.left,
                        )),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                            'assets/background_imgaes/review1_image.png',
                            height: 257,
                            fit: BoxFit.contain),
                        const SizedBox(
                          width: 10,
                        ),
                        Stack(
                          children: [
                            Column(
                              children: [
                                Image.asset(
                                  'assets/background_imgaes/review2_image.png',
                                  height: 92,
                                  fit: BoxFit.contain,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Image.asset(
                                  'assets/background_imgaes/black_background_image.png',
                                  height: 155,
                                  fit: BoxFit.contain,
                                ),
                              ],
                            ),
                            Positioned(
                              // 텍스트를 중앙에 배치
                              top: 165, // 텍스트의 위치를 이미지 중간에 맞추기 위한 y 좌표
                              left: 0,
                              right: 0,
                              child: Center(
                                child: Text(
                                  '+ 10',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Ownglyph okticon',
                                    color: Colors.white.withOpacity(0.75),
                                  ),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 31,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ImportantStoreCard extends StatelessWidget {
  final String stimagePath;
  final String stname;
  final String stintroduce;

  final seestore = Container(
    decoration: BoxDecoration(
        border: Border(
            bottom:
                BorderSide(color: Colors.white.withOpacity(0.75), width: 0.8))),
    child: Padding(
      padding: const EdgeInsets.only(bottom: 9.0),
      child: Text("장소보기",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w700,
            fontFamily: 'Ownglyph okticon',
            color: Colors.white.withOpacity(0.75),
          )),
    ),
  );

  ImportantStoreCard({
    super.key,
    required this.stimagePath,
    required this.stname,
    required this.stintroduce,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Container(
        width: 300,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xff4D9E8A)),
        child: Column(
          children: [
            Image.asset(
              stimagePath,
              width: 300,
              height: 150,
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        stname,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          fontFamily: 'Ownglyph okticon',
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Flexible(
                        child: Text(
                          stintroduce,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Colors.white.withOpacity(0.75),
                            fontFamily: 'Ownglyph okticon',
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      seestore,
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
