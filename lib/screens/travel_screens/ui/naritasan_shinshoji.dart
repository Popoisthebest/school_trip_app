import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:school_trip_app/widgets/travel_screens/basic_info.dart';
import 'package:school_trip_app/widgets/travel_screens/custom_app_bar.dart';
import 'package:school_trip_app/widgets/travel_screens/place_discription.dart';
import 'package:school_trip_app/widgets/travel_screens/place_name.dart';
import 'package:school_trip_app/widgets/travel_screens/review.dart';
import 'package:school_trip_app/widgets/travel_screens/star_and_heart.dart';

List<String> imageList = [
  "assets/travel_detail_images/narita_shinshoji_images/narita3.png",
  "assets/travel_detail_images/narita_shinshoji_images/narita4.png",
  "assets/travel_detail_images/narita_shinshoji_images/narita5.png",
];

class NaritasanShinshoji extends StatelessWidget {
  const NaritasanShinshoji({super.key});

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
                PlaceName('나리타산 신쇼지', '成田伸勝社'),
                StarAndHeart("3.0점", 3, "1.7만명"),
                const SizedBox(
                  height: 15,
                ),
                PlaceDiscription(
                    "",
                    "assets/travel_detail_images/narita_shinshoji_images/narita1.png",
                    "",
                    "나리타 공항 인근에 있는 규모가 꽤 큰 사찰로 가족의 건강과 사업 번창, 입학과 취업을 기원하러 많은 현지인들이 찾고있는절이다. 본당 배후에는 큰 연못과 녹지가 넓게 발달해 있으며 공항으로 가기 전 많은 관광객들이 들렀다 가는 곳이기도 한다. 이 사찰은 서기 930년 에 지어졌으며 1000년 이상의 역사를 가진 절이다. 매년 참배객과 여행객이 천만명 이상 방문을 한다.",
                    true),
                const SizedBox(
                  height: 20,
                ),
                PlaceDiscription(
                    "",
                    "assets/travel_detail_images/narita_shinshoji_images/narita2.png",
                    "나리타산 신승사 평화대탑",
                    "나리타산 신승사인 평화대탑은 58m 규모의 5층 탑으로 탑 아래에 2434년에 개봉할 타임캡슐이 있다는 것이 특징이다. 캡슐 안에는 세계 지도자들의 평화 메세지가 담겨있다고 한다.(426살에 한번 가보도록 하자.)",
                    true),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  height: 30,
                  decoration: const BoxDecoration(color: Color(0xFFE0E0E0)),
                ),
                const SizedBox(
                  height: 30,
                ),
                const BasicInfo(
                  location: "1 Narita, Chiba 286-0023",
                  phoneNumber: "+81-4-76222-2111",
                  link: "",
                  howToGo: SizedBox.shrink(),
                  showPhoneNumber: true,
                  showLink: false,
                  centerPosition: LatLng(35.774021, 140.392529),
                  locationName: '나리타산 신쇼지',
                ),
                const SizedBox(height: 20),
                Container(
                  height: 30,
                  decoration: const BoxDecoration(color: Color(0xFFE0E0E0)),
                ),
                Review(
                    reviewContext:
                        "답사 마지막날 별 기대없이 찾아갔던 사찰입니다. 마지막날 그냥 공항가기엔 뭔가 아쉬우니까 그냥 넣은 코스이거니 생각했으나 생각보다 절로 가는 입구 가게들과 신승사의 경치가 좋았습니다.",
                    imageList: imageList)
              ],
            ),
          ))
        ],
      ),
    );
  }
}
