import 'package:flutter/material.dart';
import 'package:school_trip_app/widgets/travel_screens/basic_info.dart';
import 'package:school_trip_app/widgets/travel_screens/custom_app_bar.dart';
import 'package:school_trip_app/widgets/travel_screens/disney_componets/detail_text.dart';
import 'package:school_trip_app/widgets/travel_screens/place_discription.dart';
import 'package:school_trip_app/widgets/travel_screens/place_image_slide.dart';
import 'package:school_trip_app/widgets/travel_screens/place_name.dart';
import 'package:school_trip_app/widgets/travel_screens/star_and_heart.dart';
import 'package:school_trip_app/widgets/travel_screens/store_info.dart';

List<String> placeImageList = [];

class OwakudaniVally extends StatelessWidget {
  const OwakudaniVally({super.key});

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
                PlaceName("오와쿠다니 계곡", "大涌谷渓谷"),
                StarAndHeart("4.0점", 4, "1.3만명"),
                const SizedBox(
                  height: 15,
                ),
                PlaceImageSlide(
                    placeName: "오와쿠다니 계곡", imageList: placeImageList),
                const SizedBox(height: 30,),
                PlaceDiscription("펄펄 끓는 유황을 볼 수 있는 활화산 지대", "image", "펄펄 끓는 유황을 볼 수 있는 활화산 지대", "실제 화산이 폭발하여 만들어진 곳으로, 현재도 활동하고 있는 활화산 지대이다. 펄펄 끓는 유황과 연기가 솟아오르는 모습을 직접 볼 수 있으며, 지열과 화산 가스로 만들어진 검은 달걀을 맛볼 수 있다.\n약 3,000년 전 하코네산의 마지막 화산 폭발로 형성된 화산 계곡으로, 현재도 지열 활동이 활발하게 이어지고 있어 유황 연기가 피어오르는 신비로운 광경을 볼 수 있다.\n계곡에서는 끊임없이 뜨거운 증기와 유황 가스를 뿜어내는 자연 현상이 일어나며, 유황이 섞인 뜨거운 물과 증기가 뿜어져 나오는 광경은 자연의 위력을 실감나게 한다.", false),
                const SizedBox(height:30,),
                Container(
                  height: 30,
                  decoration: const BoxDecoration(color: Color(0xFFE0E0E0)),

                ),
                const SizedBox(height: 30,),
                BasicInfo("250-06311251 Sengokuhara, Hakone-machi, Ashigarashimo-gun, Kanagawa-ken", "+81-4-6084-9605", "http://www.owakudani.com/",Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Column(
                        children: [
                          DetailText('하코네 로프웨이 Owakudani 역에서 도보 2분', false),
                  
                        ],
                      ),
                    ),  true, true),
                    
              ],
            ),
          ))
        ],
      ),
    );
  }
}
