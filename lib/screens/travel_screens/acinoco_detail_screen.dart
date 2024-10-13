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
  'assets/travel_detail_images/acinoco_images/acinoco1_image.png',
  'assets/travel_detail_images/acinoco_images/acinoco2_image.jpg',
  'assets/travel_detail_images/acinoco_images/acinoco3_image.jpg',
  'assets/travel_detail_images/acinoco_images/acinoco4_image.jpg',
];

List<String> reviewImageList = [
  'assets/travel_detail_images/acinoco_images/acinoco_review1_image.png',
  'assets/travel_detail_images/acinoco_images/acinoco_review2_image.png',
  'assets/travel_detail_images/acinoco_images/acinoco_review3_image.png',
];

class AcinocoDetailScreen extends StatelessWidget {
  const AcinocoDetailScreen({super.key});

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
                  PlaceName("아시노코", "芦ノ湖"),
                  StarAndHeart("3.0점", 3, "5만 명"),
                  const SizedBox(
                    height: 15,
                  ),
                  PlaceImageSlide(
                      placeName: "아시노코 호수", imageList: placeImageList),
                  PlaceDiscription(
                    "유람선을 타고 아름다운 풍경을 \n감상할 수 있는 호수",
                    "assets/travel_detail_images/acinoco_images/acinoco_place_discription_image.png",
                    "화산 활동으로 생겨난 아름다운 호수",
                    "하코네 산의 화산 활동으로 만들어진 호수. 하코네의 유명 관광지에 둘러싸여 있고, 그림같이 아름다운 풍경으로 많은 관광객들에게 인기 있는 곳이다. 호수의 둘레길을 따라 조성된 산책로를 거닐며 여유를 즐기기 좋으며, 유람선이나 케이블카 등에 탑승하여 색다른 방법으로 풍경을 즐길 수도 있다.",
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () {},
                            child: const Text(
                              '아시노코 해적선',
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
                  const SizedBox(height: 20),
                  Container(
                    height: 30,
                    decoration: const BoxDecoration(
                      color: Color(0xffe0e0e0),
                    ),
                  ),
                  BasicInfo(
                    'Lake Ashi, Motohakone, Hakone, Ashigarashimo District, Kanagawa Prefecture 250-0522', // 위치
                    '+81-4-6083-7722', // 전화번호
                    'http://www.hakone-ashinoko.net/area_guide.html', // 해당 사이트 주소
                    '하코네 등산 선 하코네 유모토 역에서 도겐다이 선 버스 이용, Hakone lake hotel mae 정류장 하차 후 도보 5분', // 가는 방법
                    true, // 전화번호 부여주기
                    true, // 사이트 링크 보여주기
                  ),
                  Container(
                    height: 30,
                    decoration: const BoxDecoration(
                      color: Color(0xffe0e0e0),
                    ),
                  ),
                  Review(
                    reviewContext:
                        '아시호수는 하코에의 호수로서 유람선이 운행할 만큼 넓고 물이 맑고 주변경치가 좋았습니다. 해적선을 탑승해서 호수를 볼 수 있는 시간이 있습니다.',
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
