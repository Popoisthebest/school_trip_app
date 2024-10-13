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
  'assets/travel_detail_images/hakonemachi_port_images/hakonemachi_port1_image.png',
  'assets/travel_detail_images/hakonemachi_port_images/hakonemachi_port2_image.png',
  'assets/travel_detail_images/hakonemachi_port_images/hakonemachi_port3_image.png',
  'assets/travel_detail_images/hakonemachi_port_images/hakonemachi_port4_image.png',
];

List<String> reviewImageList = [
  'assets/travel_detail_images/hakonemachi_port_images/hakonemachi_port_review1_image.png',
  'assets/travel_detail_images/hakonemachi_port_images/hakonemachi_port_review2_image.png',
  'assets/travel_detail_images/hakonemachi_port_images/hakonemachi_port_review3_image.png',
];

class HakonemachiPortDetailScreen extends StatelessWidget {
  const HakonemachiPortDetailScreen({super.key});

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
                  PlaceName("하코네마치 항", "箱根町港"),
                  StarAndHeart("3.0점", 3, "194명"),
                  const SizedBox(
                    height: 15,
                  ),
                  PlaceImageSlide(
                      placeName: "하코네마치 항", imageList: placeImageList),
                  const SizedBox(height: 31),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      children: [
                        Text(
                          '‘하코네 해적선’을 타고 경유해 근사한 \n호수의 경치를 조망하기 좋은 항구',
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
                  const SizedBox(height: 20),
                  Container(
                    height: 30,
                    decoration: const BoxDecoration(
                      color: Color(0xffe0e0e0),
                    ),
                  ),
                  BasicInfo(
                    '161 Hakone, Ashigarashimo District, Kanagawa 250-0521', // 위치
                    '+81-4-6083-7550', // 전화번호
                    'https://www.hakonenavi.jp/transportation/station/hakonemachiko/?utm_source=googlemap', // 해당 사이트 주소
                    '???', // 가는 방법
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
                    reviewContext: '아시호수에서 유람선을 탑승하는 항입니다. 별 특이사항은 없습니다.',
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
