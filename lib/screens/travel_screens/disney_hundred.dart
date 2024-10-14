import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:school_trip_app/widgets/travel_screens/basic_info.dart';
import 'package:school_trip_app/widgets/travel_screens/custom_app_bar.dart';
import 'package:school_trip_app/widgets/travel_screens/main_store.dart';
import 'package:school_trip_app/widgets/travel_screens/place_discription.dart';
import 'package:school_trip_app/widgets/travel_screens/place_image_slide.dart';
import 'package:school_trip_app/widgets/travel_screens/place_name.dart';
import 'package:school_trip_app/widgets/travel_screens/review.dart';
import 'package:school_trip_app/widgets/travel_screens/star_and_heart.dart';
import 'package:url_launcher/url_launcher.dart';

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

class DisneyHundred extends StatelessWidget {
  const DisneyHundred({super.key});

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
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      children: [
                        const Row(
                          children: [
                            Text(
                              '도쿄 디즈니랜드 100배 즐기기',
                              style: TextStyle(
                                color: Color(0xFF1A1A1A),
                                fontSize: 24,
                                fontFamily: 'Ownglyph okticon',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          width: double.infinity,
                          height: 335,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/travel_detail_images/disney_hundred_images/disney_hundred1_image.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        const Row(
                          children: [
                            Flexible(
                              child: Text(
                                "도쿄 여행 필수 코스로 꼽히는 디즈니 리조트. 도쿄 디즈니 리조트는 메인 파크인 '디즈니랜드'와 바다 컨셉의 '디즈니씨'로 나뉜다. 그중 디즈니랜드의 티켓 정보부터 퍼레이드, 추천 맛집까지 알차게 정리했으니 디즈니랜드에서의 꿈같은 하루, 트리플과 함께해보자.",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Ownglyph okticon',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 30,
                    decoration: const BoxDecoration(
                      color: Color(0xffe0e0e0),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      children: [
                        const Row(
                          children: [
                            Text(
                              '도쿄 디즈니 리조트 앱',
                              style: TextStyle(
                                color: Color(0xBF1A1A1A),
                                fontSize: 20,
                                fontFamily: 'Ownglyph okticon',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                        const Row(
                          children: [
                            Flexible(
                              child: Text(
                                '디즈니랜드 방문에 앞서 앱 다운로드는 필수! 현재 자신의 위치 확인은 물론, 어트랙션의 대기 시간, 레스토랑 예약도 가능하다. 한국에서 미리 입장권을 구매했거나 현장에서 예매한 경우에는 앱에 티켓을 등록해야 한다. 입장 시 앱의 QR 코드를 보여줘야 하는데 데이터가 잘 안 터질 수도 있으니 미리 캡처해 두는 것을 추천.',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Ownglyph okticon',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        const Row(
                          children: [
                            Text(
                              '리조트 앱 설치 시 유의사항',
                              style: TextStyle(
                                color: Color(0xFF4F9AD4),
                                fontSize: 20,
                                fontFamily: 'Ownglyph okticon',
                                fontWeight: FontWeight.w700,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        const Row(
                          children: [
                            Flexible(
                              child: Text(
                                '앱을 한국에서 미리 다운로드하고 회원가입을 하면 오류가 발생하는 경우가 많아 현지에서 하기를 권장한다.',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Ownglyph okticon',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        SizedBox(
                          width: double.infinity,
                          height: 190,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/travel_detail_images/disney_hundred_images/disney_hundred_app_image.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            Expanded(
                              child: GestureDetector(
                                onTap: () async {
                                  Uri url = Uri.parse(
                                      'https://apps.apple.com/jp/app/tokyo-disney-resort-app/id1313147771?l=ja&ls=1');
                                  if (await canLaunchUrl(url)) {
                                    await launchUrl(url);
                                  } else {
                                    throw '링크를 열 수 없습니다: $url';
                                  }
                                },
                                child: const Text(
                                  'iOS 다운로드',
                                  style: TextStyle(
                                    color: Color(0xFF4F9AD4),
                                    fontSize: 14,
                                    fontFamily: 'Ownglyph okticon',
                                    fontWeight: FontWeight.w400,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            Expanded(
                              child: GestureDetector(
                                onTap: () async {
                                  Uri url = Uri.parse(
                                      'https://play.google.com/store/apps/details?id=jp.tokyodisneyresort.portalapp&hl=ja');
                                  if (await canLaunchUrl(url)) {
                                    await launchUrl(url);
                                  } else {
                                    throw '링크를 열 수 없습니다: $url';
                                  }
                                },
                                child: const Text(
                                  'Android 다운로드',
                                  style: TextStyle(
                                    color: Color(0xFF4F9AD4),
                                    fontSize: 14,
                                    fontFamily: 'Ownglyph okticon',
                                    fontWeight: FontWeight.w400,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  Container(
                    height: 2,
                    decoration: const BoxDecoration(
                      color: Color(0xffe0e0e0),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      children: [
                        const Row(
                          children: [
                            Text(
                              '도쿄 디즈니랜드의 모든 것!',
                              style: TextStyle(
                                color: Color(0xFF1A1A1A),
                                fontSize: 20,
                                fontFamily: 'Ownglyph okticon',
                                fontWeight: FontWeight.w700,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                        const Row(
                          children: [
                            Flexible(
                              child: Text(
                                '동화 속에 들어온 듯한 분위기를 선사하는 디즈니랜드. 시그니처인 신데렐라 성, 퍼레이드와 함께 디즈니랜드의 7가지 테마를 즐기다 보면 어느새 동심으로 돌아가 있는 모습을 발견할 것이다. 디즈니랜드 완전 정복을 꿈꾼다면 대표 어트랙션과 디즈니 팝콘 통도 놓치지 말 것!',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Ownglyph okticon',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 30),
                        SizedBox(
                          width: double.infinity,
                          height: 337,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/travel_detail_images/disney_hundred_images/disney_hundred2_image.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10.5),
                        SizedBox(
                          width: double.infinity,
                          height: 337,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/travel_detail_images/disney_hundred_images/disney_hundred3_image.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10.5),
                        SizedBox(
                          width: double.infinity,
                          height: 337,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/travel_detail_images/disney_hundred_images/disney_hundred4_image.png',
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
                      color: Color(0xffe0e0e0),
                    ),
                  ),
                  const SizedBox(height: 30),
                  PlaceDiscription(
                    '추천 맛집',
                    'assets/travel_detail_images/disney_hundred_images/disney_hundred5_image.png',
                    '퀸 오브 하트 뱅큇 홀',
                    '<이상한 나라의 앨리스> 테마의 양식 레스토랑. 독특한 인테리어는 물론 메뉴의 플레이팅이나 맛도 좋은 편이다. 특히 어린이 메뉴가 인기.',
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () {},
                            child: const Text(
                              '매장보기',
                              style: TextStyle(
                                color: Color(0xFF4F9AD4),
                                fontSize: 14,
                                fontFamily: 'Ownglyph okticon',
                                fontWeight: FontWeight.w400,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),
                  Container(
                    height: 2,
                    decoration: const BoxDecoration(
                      color: Color(0xffe0e0e0),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      children: [
                        SizedBox(
                          width: double.infinity,
                          height: 157,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/travel_detail_images/disney_hundred_images/disney_hundred6_image.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        const Row(
                          children: [
                            Text(
                              '투모로우 랜드 테라스',
                              style: TextStyle(
                                color: Color(0xFF1A1A1A),
                                fontSize: 20,
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
                                '미키마우스 모양의 햄버거와 너겟을 판매해 인증샷을 부른다. 각종 캐릭터 장난감을 서비스로 주는 디저트 류도 아이들에게 인기 만점.',
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
                        Row(
                          children: [
                            Expanded(
                              child: GestureDetector(
                                onTap: () {},
                                child: const Text(
                                  '매장보기',
                                  style: TextStyle(
                                    color: Color(0xFF4F9AD4),
                                    fontSize: 14,
                                    fontFamily: 'Ownglyph okticon',
                                    fontWeight: FontWeight.w400,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 30),
                      ],
                    ),
                  ),
                  Container(
                    height: 2,
                    decoration: const BoxDecoration(
                      color: Color(0xffe0e0e0),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      children: [
                        SizedBox(
                          width: double.infinity,
                          height: 254,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/travel_detail_images/disney_hundred_images/disney_hundred7_image.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        const Row(
                          children: [
                            Text(
                              '디즈니 팝콘',
                              style: TextStyle(
                                color: Color(0xFF1A1A1A),
                                fontSize: 20,
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
                                '테마 별로 다양한 팝콘과 팝콘 통을 판매한다. 맛도 좋지만 팝콘 통은 기념품으로 간직하기 좋다. 특별히 원하는 팝콘 맛이나 팝콘 통이 있다면 홈페이지를 확인 후 방문할 것.',
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
                        Row(
                          children: [
                            Expanded(
                              child: GestureDetector(
                                onTap: () async {
                                  Uri url = Uri.parse(
                                      'https://www.tokyodisneyresort.jp/tdl/food/popcorn.html');
                                  if (await canLaunchUrl(url)) {
                                    await launchUrl(url);
                                  } else {
                                    throw '링크를 열 수 없습니다: $url';
                                  }
                                },
                                child: const Text(
                                  '판매 위치 보기',
                                  style: TextStyle(
                                    color: Color(0xFF4F9AD4),
                                    fontSize: 14,
                                    fontFamily: 'Ownglyph okticon',
                                    fontWeight: FontWeight.w400,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 30),
                      ],
                    ),
                  ),
                  Container(
                    height: 2,
                    decoration: const BoxDecoration(
                      color: Color(0xffe0e0e0),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      children: [
                        const Row(
                          children: [
                            Text(
                              '인기 먹거리',
                              style: TextStyle(
                                color: Color(0xFF1A1A1A),
                                fontSize: 20,
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
                                '도쿄 디즈니 리조트의 또 다른 묘미는 바로 간식. 귀여운 디즈니 애니메이션 속 캐릭터를 형상화해 비주얼부터 마음을 사로잡는다. 디즈니랜드 곳곳에서 판매하니 이용하는 중간중간 놓치지 말고 맛보자.',
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
                          height: 254,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/travel_detail_images/disney_hundred_images/disney_hundred_treats1_image.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        const Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  '리틀 그린 덤플링',
                                  style: TextStyle(
                                    color: Color(0xFF1A1A1A),
                                    fontSize: 20,
                                    fontFamily: 'Ownglyph okticon',
                                    fontWeight: FontWeight.w700,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 10),
                            Text(
                              '일명 ‘알린 모찌’라고 불린다. 모찌가 <토이스토리> 속 눈이 세 개 달린 캐릭터 ‘알린’을 닮았다. 한 컵에 딸기, 바나나, 초콜릿 맛이 들어있다.',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'Ownglyph okticon',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: '위치\n',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontFamily: 'Ownglyph okticon',
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      TextSpan(
                                        text:
                                            '투머로우랜드 ‘팬 갤럭틱 피자 모트’, ‘플라즈마 레이즈 다이너’',
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
                        const SizedBox(height: 30),
                      ],
                    ),
                  ),
                  Container(
                    height: 2,
                    decoration: const BoxDecoration(
                      color: Color(0xffe0e0e0),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      children: [
                        SizedBox(
                          width: double.infinity,
                          height: 254,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/travel_detail_images/disney_hundred_images/disney_hundred_treats2_image.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        const Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  '미키 아이스 바',
                                  style: TextStyle(
                                    color: Color(0xFF1A1A1A),
                                    fontSize: 20,
                                    fontFamily: 'Ownglyph okticon',
                                    fontWeight: FontWeight.w700,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 10),
                            Text(
                              '더운 여름에 방문했다면, 아이스바를 추천. 인기 먹거리답게 생김새도 남다른데, 미키마우스 모양으로 사진 남기기에도 좋다. 맛은 트로피컬, 피치 & 라즈베리 맛 두 가지로 나뉜다.',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'Ownglyph okticon',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Flexible(
                                  child: Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: '위치\n',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontFamily: 'Ownglyph okticon',
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        TextSpan(
                                          text:
                                              '어드벤처랜드 ‘프레시 프루트 오아시스’, 판타지 랜드 ‘빌리지 페이스트리’ 등',
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
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 30),
                      ],
                    ),
                  ),
                  Container(
                    height: 2,
                    decoration: const BoxDecoration(
                      color: Color(0xffe0e0e0),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      children: [
                        SizedBox(
                          width: double.infinity,
                          height: 254,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/travel_detail_images/disney_hundred_images/disney_hundred_treats3_image.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        const Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  '미키 추로스',
                                  style: TextStyle(
                                    color: Color(0xFF1A1A1A),
                                    fontSize: 20,
                                    fontFamily: 'Ownglyph okticon',
                                    fontWeight: FontWeight.w700,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 10),
                            Text(
                              '놀이공원 먹거리 No.1, 추로스. 평범한 추로스도 판매하지만 디즈니 리조트에 왔다면 단면이 미키마우스 모양인 미키 추로스를 추천한다.',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'Ownglyph okticon',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Flexible(
                                  child: Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: '위치\n',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontFamily: 'Ownglyph okticon',
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        TextSpan(
                                          text:
                                              '크리터 컨트리 ‘라케티의 라쿤 살롱’, 투머로우랜드 ‘투머로우랜드 테라스’',
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
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 30),
                      ],
                    ),
                  ),
                  Container(
                    height: 2,
                    decoration: const BoxDecoration(
                      color: Color(0xffe0e0e0),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      children: [
                        SizedBox(
                          width: double.infinity,
                          height: 254,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/travel_detail_images/disney_hundred_images/disney_hundred_treats4_image.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        const Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  '계란 치킨 차이니즈 번',
                                  style: TextStyle(
                                    color: Color(0xFF1A1A1A),
                                    fontSize: 20,
                                    fontFamily: 'Ownglyph okticon',
                                    fontWeight: FontWeight.w700,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 10),
                            Text(
                              '미키 마우스의 장갑을 닮은 빵 사이에 달걀과 치킨, 채소가 들어간다. 단품으로도, 프렌치프라이와 음료가 함께 나오는 세트로도 판매한다.',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'Ownglyph okticon',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Flexible(
                                  child: Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: '위치\n',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontFamily: 'Ownglyph okticon',
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        TextSpan(
                                          text: '툰다운 ‘휴이/듀이/루이의 굿타임 카페’',
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
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 30),
                      ],
                    ),
                  ),
                  Container(
                    height: 2,
                    decoration: const BoxDecoration(
                      color: Color(0xffe0e0e0),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      children: [
                        SizedBox(
                          width: double.infinity,
                          height: 254,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/travel_detail_images/disney_hundred_images/disney_hundred_treats5_image.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        const Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  '매운 훈제 닭다리',
                                  style: TextStyle(
                                    color: Color(0xFF1A1A1A),
                                    fontSize: 20,
                                    fontFamily: 'Ownglyph okticon',
                                    fontWeight: FontWeight.w700,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 10),
                            Text(
                              '식사 대용으로 간단하게 허기를 달래기 좋은 간식. 촉촉한 식감에 짭쪼름한 맛이 일품이다. 맥주, 탄산음료랑 잘 어울리니 함께 먹는 것을 추천!',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'Ownglyph okticon',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Flexible(
                                  child: Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: '위치\n',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontFamily: 'Ownglyph okticon',
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        TextSpan(
                                          text: '웨스턴랜드 ‘플라자 파빌리온 레스토랑’',
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
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 30),
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
