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

class OdaibaDetailScreen extends StatelessWidget {
  const OdaibaDetailScreen({super.key});

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
                  PlaceName("오다이바", "お台場"),
                  StarAndHeart("3.0점", 3, "18명"),
                  const SizedBox(
                    height: 15,
                  ),
                  PlaceImageSlide(
                      placeName: "오다이바 레인보우 브릿지", imageList: placeImageList),
                  PlaceDiscription(
                    "바다와 어우러진 야경이 아름다운/n필수 관광지",
                    "assets/travel_detail_images/odaiba_images/odaiba_night_image.png",
                    "도쿄의 바다 위 엔터테인먼트 섬, 오다이바",
                    "본래 도쿄 내륙 지역을 방어하기 위한 군사 목적으로 조성된 인공섬이었으나, 지금은 즐길 거리가 많은 해안가 관고아 특구로 유명한 곳이다. 대형 쇼핑몰 및 테마 숍과 맛집이 많아 오션뷰를 즐기며 쇼핑과 음식을 즐길 수 있다. 밤에는 재즈 음악이 흐르며, 독특한 디자인의 후지TV 본사 빌딩, 레인보우 브리지, ‘자유의 여신상’ 등이 도쿄의 바다를 빛내고 있어, 아름다운 야경을 보며 여유를 즐기기 좋다.",
                    false,
                  ),
                  const SizedBox(height: 30),
                  Container(
                    height: 30,
                    decoration: const BoxDecoration(
                      color: Color(0xffe0e0e0),
                    ),
                  ),
                  BasicInfo(
                    'Odaiba, Daiba 1-1, Minato City, Tokyo, Japan', // 위치
                    '', // 전화번호
                    '', // 해당 사이트 주소
                    const Text(
                      '린카이 선 도쿄텔레포트 역에서 도보 7분',
                      style: TextStyle(
                        color: Color(0xBF1A1A1A),
                        fontSize: 14,
                        fontFamily: 'Ownglyph okticon',
                        fontWeight: FontWeight.w400,
                        height: 0.10,
                      ),
                    )
                    // 가는 방법
                    ,
                    false, // 전화번호 부여주기
                    false, // 사이트 링크 보여주기
                  ),
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
