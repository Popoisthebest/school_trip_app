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

List<String> placeImageList = [
  'assets/travel_background_imgaes/hakone_koanso1_image.png',
  'assets/travel_background_imgaes/hakone_koanso2_image.png',
  'assets/travel_background_imgaes/hakone_koanso3_image.png',
  'assets/travel_background_imgaes/hakone_koanso4_image.png',
];

List<String> reviewImageList = [
  'assets/travel_detail_images/hakone_koanso_images/hakone_koanso_review1_image.png',
  'assets/travel_detail_images/hakone_koanso_images/hakone_koanso_review2_image.png',
  'assets/travel_detail_images/hakone_koanso_images/hakone_koanso_review3_image.png',
];

class HakoneKoansoDetailScreen extends StatelessWidget {
  const HakoneKoansoDetailScreen({super.key});

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
                  PlaceName("하코네 코한소", "箱根小半荘"),
                  StarAndHeart("4.0점", 4, "1.7만 명"),
                  const SizedBox(
                    height: 15,
                  ),
                  PlaceImageSlide(
                      placeName: "하코네 코한소", imageList: placeImageList),
                  const SizedBox(height: 30),
                  BasicInfo(
                    '78 Motohakone, Hakone, Ashigarashimo District, Kanagawa 250-0522, Japan', // 위치
                    '+81-4-6083-6541', // 전화번호
                    'http://www.hakone-kohansou.co.jp/', // 해당 사이트 주소
                    '버스로 이동', // 가는 방법
                    true, // 전화번호 부여주기
                    true, // 사이트 링크 보여주기
                  ),
                  Container(
                    height: 2,
                    decoration: const BoxDecoration(color: Color(0xFFE0E0E0)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 22.0),
                    child: Column(
                      children: [
                        const SizedBox(height: 27),
                        Row(
                          children: [
                            SvgPicture.asset(
                                'assets/travel_detail_icons/warning_icon.svg'),
                            const SizedBox(width: 12),
                            const Text(
                              '알레르기 유발 품목',
                              style: TextStyle(
                                color: Color(0xFF1A1A1A),
                                fontSize: 16,
                                fontFamily: 'Ownglyph okticon',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 4),
                        const Padding(
                          padding: EdgeInsets.only(left: 32.0),
                          child: Row(
                            children: [
                              Flexible(
                                child: Text(
                                  '대나무, 생선, 난류, 우유, 땅콩, 대두, 밀, 새우, 돼지고기, 토마토, 호두, 닭고기, 쇠고기',
                                  style: TextStyle(
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
                        const SizedBox(height: 24),
                      ],
                    ),
                  ),
                  Container(
                    height: 2,
                    decoration: const BoxDecoration(color: Color(0xFFE0E0E0)),
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
                        '셋째날 점심을 먹는 식당으로 음식이 감칠맛이 나고 정갈했음. 우리가 수학여행가는 날짜가 단풍철이고 성수기이기 때문에 외부손님들도 많아서 식사가 제때 나올지 걱정되기도 함. 음식 맛에 대한 만족도는 높았음.',
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
