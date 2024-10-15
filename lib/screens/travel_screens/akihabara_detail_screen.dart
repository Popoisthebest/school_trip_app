// 이수호 작업 공간

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:school_trip_app/widgets/travel_screens/basic_info.dart';
import 'package:school_trip_app/widgets/travel_screens/custom_app_bar.dart';
import 'package:school_trip_app/widgets/travel_screens/main_store.dart';
import 'package:school_trip_app/widgets/travel_screens/place_discription.dart';
import 'package:school_trip_app/widgets/travel_screens/place_image_slide.dart';
import 'package:school_trip_app/widgets/travel_screens/place_name.dart';
import 'package:school_trip_app/widgets/travel_screens/review.dart';
import 'package:school_trip_app/widgets/travel_screens/star_and_heart.dart';

List<String> placeImageList = [
  'assets/travel_detail_images/akihabara_images/44fc3f64de9f7ebfa47716743209c6f5.jpeg',
  'assets/travel_detail_images/akihabara_images/939008f7f9449327c4e1ff58dec25ad5.png',
  'assets/travel_detail_images/akihabara_images/c0e53e07eeb9b55ff8f1aaaeacfab0b1.jpeg',
  'assets/travel_detail_images/akihabara_images/d3ead99a1c8ca512009ea2ebc41ed10a.jpeg',
  'assets/travel_detail_images/akihabara_images/d85f4a4d9f52b309e65d7e17685a16ff.jpeg',
];

List<String> reviewImageList = [
  'assets/travel_detail_images/akihabara_images/review_images/5053e3bd9e6747dcae506f61bd8564cf.png',
  'assets/travel_detail_images/akihabara_images/review_images/acd6f3a43ca7d1c1698962028fd08b88.png',
  'assets/travel_detail_images/akihabara_images/review_images/e9aeaa21cc4c3cc07a738e0d5709e409.png',
];

List<Map<String, dynamic>> storeList = [
  {
    'stimagePath':
        'assets/travel_background_imgaes/store_images/tokyo_leisureland_akihabara.png',
    'stname': '도쿄 레저랜드 아키하바라 점',
    'stintroduce': '다양한 이벤트가 진행되는 복합 레저 센터',
    'onTap': () {
      print('도쿄 레저랜드 아키하바라 점');
    }
  },
  {
    'stimagePath':
        'assets/travel_background_imgaes/store_images/super_potato_akihabara.png',
    'stname': '슈퍼 포테이토 아키하바라 점',
    'stintroduce': '레트로 게임을 즐길 수 있는 센터 겸 상점',
    'onTap': () {
      print('슈퍼 포테이토 아키하바라 점');
    }
  },
  {
    'stimagePath':
        'assets/travel_background_imgaes/store_images/hey_akihabara.png',
    'stname': 'HEY 아키하바라',
    'stintroduce': '슈팅게임으로 인기가 많은 게임 센터',
    'onTap': () {
      print('HEY 아키하바라');
    }
  },
  {
    'stimagePath':
        'assets/travel_background_imgaes/store_images/taito_station_akihabara.png',
    'stname': '타이토 스테이션 아키하바라 점',
    'stintroduce': '5층 규모의 대형 게임 센터',
    'onTap': () {
      print('타이토 스테이션 아키하바라 점');
    }
  },
  // 필요한 만큼 매장 정보를 추가할 수 있습니다.
];

class AkihabaraDetailScreen extends StatelessWidget {
  const AkihabaraDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          buildCustomAppBar(context, ''),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  PlaceName("아키하바라", "秋葉原"),
                  StarAndHeart("5.0점", 5, "138명"),
                  const SizedBox(
                    height: 15,
                  ),
                  PlaceImageSlide(
                      placeName: '아키하바라', imageList: placeImageList),
                  PlaceDiscription(
                      "다양한 애니메이션 관련 제품을\n만날 수 있는 일본 대표 오타로드",
                      'assets/travel_detail_images/akihabara_images/0e3937de40ae18ec176c40800269003b.png',
                      "게임과 재패니메이션 매니아들의 성지",
                      "연간 수백만 명 이상의 여행객이 방문하는, 게임과 애니메이션 매니아들의 성지이다. 거리 곳곳에 게임관련 매장과 오락실, 코스프레 샵들이 들어서 있으며, ‘갓챠(일본식 뽑기 게임)’를 즐길 수 있는 곳도 많다. 특별한 관심이 없더라도 일본 특유의 서브 컬쳐 문화를 보고 느끼고 싶다면 한번 방문해보는 것도 좋다.",
                      false),
                  const SizedBox(height: 30),
                  MainStore(storeList, false, false),
                  const SizedBox(height: 30),
                  Container(
                    height: 30,
                    decoration: const BoxDecoration(
                      color: Color(0xffe0e0e0),
                    ),
                  ),
                  const BasicInfo(
                      location:
                          'Akihabara, Kanda, Chiyoda City, Tokyo, 101-0021, Japan',
                      phoneNumber: '',
                      link: '',
                      howToGo: Row(
                        children: [
                          Text(
                            'JR 아키하바라역 전자상가 출구에서 도보 5분',
                            style: TextStyle(
                              color: Color(0xBF1A1A1A),
                              fontSize: 14,
                              fontFamily: 'Ownglyph okticon',
                              fontWeight: FontWeight.w400,
                              height: 0.10,
                            ),
                          ),
                        ],
                      ),
                      showPhoneNumber: false,
                      showLink: false,
                      centerPosition: LatLng(35.702208, 139.774500),
                      locationName: '아키하바라'),
                  Container(
                    height: 30,
                    decoration: const BoxDecoration(
                      color: Color(0xffe0e0e0),
                    ),
                  ),
                  Review(
                      reviewContext:
                          '첫째날 가게 될 아키하바라는 일본의 전성기를 잘 보여주는 전자상가거리입니다. 우리 학생들이 눈 돌아갈 만한 요소가 많이 있어요. 주머니를 너무 많이 털리지 않을까 걱정도 됩니다. 시간을 더 많이 주고 싶으나 정해진 일정 때문에 아쉬움이 있을 수 있어요.',
                      imageList: reviewImageList),
                  const SizedBox(height: 30)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
