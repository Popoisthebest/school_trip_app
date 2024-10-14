import 'package:flutter/material.dart';
import 'package:school_trip_app/widgets/travel_screens/basic_info.dart';
import 'package:school_trip_app/widgets/travel_screens/custom_app_bar.dart';
import 'package:school_trip_app/widgets/travel_screens/main_store.dart';
import 'package:school_trip_app/widgets/travel_screens/place_name.dart';
import 'package:school_trip_app/widgets/travel_screens/review.dart';
import 'package:school_trip_app/widgets/travel_screens/star_and_heart.dart';
import 'package:school_trip_app/widgets/travel_screens/tip.dart';
import 'package:url_launcher/url_launcher.dart';

List<String> placeImageList = [
  'assets/travel_background_imgaes/disney1_image.png'
];

List<String> reviewImageList = [
  'assets/travel_detail_images/disneyland_images/disney_review_image1.png',
  'assets/travel_detail_images/disneyland_images/disney_review_image2.png',
  'assets/travel_detail_images/disneyland_images/disney_review_image3.png',
];

List<Map<String, dynamic>> storeList = [
  {
    'stimagePath':
        'assets/travel_detail_images/disneyland_images/disney_area1_image.png',
    'stname': '인포메이션',
    'stintroduce': '한국어 안내서 및 예약 서비스 제공(정문 좌측, 07:30 - 20:00)',
    'onTap': () {
      print('디즈니랜드 인포메이션');
    }
  },
  {
    'stimagePath':
        'assets/travel_detail_images/disneyland_images/disney_area2_image.png',
    'stname': '판타지 랜드',
    'stintroduce': '신데렐라, 백설공주 등의 디즈니 작품을 모티브로 만든 구역',
    'onTap': () {
      print('디즈니랜드 판타지 랜드');
    }
  },
];

class DisneyDetailScreen extends StatelessWidget {
  const DisneyDetailScreen({super.key});

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
                  PlaceName("도쿄 디즈니랜드", "新宿ワシントンホテル"),
                  StarAndHeart("4.0점", 4, "36만 명"),
                  const SizedBox(
                    height: 15,
                  ),
                  Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Row(
                          children: [
                            Text(
                              '도쿄 디즈니랜드',
                              style: TextStyle(
                                color: Color(0xFF1A1A1A),
                                fontSize: 24,
                                fontFamily: 'Ownglyph okticon',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 220,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/travel_background_imgaes/disney1_image.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 30),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      children: [
                        Text(
                          '온가족 모두 즐거운 테마파크',
                          style: TextStyle(
                            color: Color(0xBF1A1A1A),
                            fontSize: 20,
                            fontFamily: 'Ownglyph okticon',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Flexible(
                              child: Column(
                                children: [
                                  Text(
                                    "미국을 제외한 나라 중 1983년 최초로 오픈한 디즈니랜드. 7개의 테마 랜드는 재밌는 어트랙션과 볼거리들이 가득해 아이는 물론 어른까지 동심의 세계로 돌아가게 한다. '백설 공주와 일곱 난쟁이', '신데렐라', '미녀와 야수'등 유명 동화 속 공간을 실제로 구현해 명장면을 생생하게 경험하기 좋고, 영화 '빅 히어로'를 콘셉트로 한 놀이기구 '더 해피 라이드'가 세계 최초로 자리해 많은 여행객들의 발길이 끊이지 않는다.",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontFamily: 'Ownglyph okticon',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Row(
                      children: [
                        Text(
                          '인기 캐릭터들이 등장하는 신나는 퍼레이드',
                          style: TextStyle(
                            color: Color(0xBF1A1A1A),
                            fontSize: 20,
                            fontFamily: 'Ownglyph okticon',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      '언제나 즐거운 도쿄 디즈니랜드. 미키마우스와 알라딘, 우디와 버즈 등 디즈니 인기 캐릭터들이 등장하는 신나는 퍼레이드와 디즈니 성을 배경으로 펼쳐지는 환상적인 불꽃놀이가 매일 방문객들을 기다리고 있다. 홈페이지에서 상세 정보를 확인할 수 있으니 참고하자.',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'Ownglyph okticon',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () async {
                              Uri url = Uri.parse(
                                  'https://www.tokyodisneyresort.jp/kr/tdl/show.html');
                              if (await canLaunchUrl(url)) {
                                await launchUrl(url);
                              } else {
                                throw '링크를 열 수 없습니다: $url';
                              }
                            },
                            child: const Text(
                              '이벤트 자세히 보기',
                              style: TextStyle(
                                color: Color(0xFF4F9AD4),
                                fontSize: 14,
                                fontFamily: 'Ownglyph okticon',
                                fontWeight: FontWeight.w400,
                                decoration: TextDecoration.underline,
                                decorationColor: Color(0xFF4F9AD4),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  MainStore(storeList, true, false),
                  const SizedBox(height: 10),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      children: [
                        Text(
                          '도쿄 디즈니랜드 100배 즐기기',
                          style: TextStyle(
                            color: Color(0xFF4F9AD4),
                            fontSize: 15,
                            fontFamily: 'Ownglyph okticon',
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.underline,
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    height: 30,
                    decoration: const BoxDecoration(color: Color(0xFFE0E0E0)),
                  ),
                  BasicInfo(
                    '1-1 Maihama, Urayasu, Chiba 279-0031',
                    '+81-4-5330-5211',
                    'http://www.tokyodisneyresort.jp/kr/tdl/',
                    const Text(
                      'JR Maihama 역 남쪽 출구에서 도쿄 디즈니 랜드 입구까지\n도보 7분',
                      style: TextStyle(
                        color: Color(0xBF1A1A1A),
                        fontSize: 14,
                        fontFamily: 'Ownglyph okticon',
                        fontWeight: FontWeight.w400,
                        height: 0.10,
                      ),
                    ),
                    true,
                    true,
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Image.asset(
                        'assets/travel_detail_images/disneyland_images/disney_map_image.png'),
                  ),
                  Tip(),
                  Container(
                    height: 30,
                    decoration: const BoxDecoration(color: Color(0xFFE0E0E0)),
                  ),
                  Review(
                    reviewContext:
                        '답사때 디즈니랜드는 생략했는데요. 예전에 가족과 함께 경험한 적이 있었는데, 굉장히 넓은 면적에 다양한 놀이시설이 있어서 시간이 어떻게 갔는지 모를 것입니다. 아침부터 저녁까지 거의 12시간을 보내게 되며 점심과 저녁은 밀쿠폰이 지급됩니다.',
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
