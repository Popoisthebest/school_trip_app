import 'package:flutter/material.dart';
import 'package:school_trip_app/widgets/travel_screens/custom_app_bar.dart';
import 'package:school_trip_app/widgets/travel_screens/incheon_components/setting.dart';
import 'package:school_trip_app/widgets/travel_screens/main_airport_detail.dart';
import 'package:school_trip_app/widgets/travel_screens/place_discription.dart';
import 'package:school_trip_app/widgets/travel_screens/place_image_slide.dart';
import 'package:school_trip_app/widgets/travel_screens/place_name.dart';
import 'package:school_trip_app/widgets/travel_screens/star_and_heart.dart';

List<String> placeImageList = [
  "assets/travel_detail_images/incheon_airport_images/incheon1.png",
];

List<Map<String, dynamic>> airportdetail = [
  {
    'stimagePath':
        'assets/travel_detail_images/incheon_airport_images/incheon3.png',
    'stname': '출국장(3층)',
    'stintroduce': '공항에 도착하면 제일 먼저 보게 되는 체크인 카운터 층.\n주요시설: 체크인 카운터',
    'onTap': () {
      print('도쿄 레저랜드 아키하바라 점');
    }
  },
  {
    'stimagePath':
        'assets/travel_detail_images/incheon_airport_images/incheon4.png',
    'stname': '입국장(1층)',
    'stintroduce': '한국에 귀국할 때 도착하는 층.\n주요 시설: 환전소, 로밍, 포켓 와이파이, 택배, 리무진 버스',
    'onTap': () {
      print('슈퍼 포테이토 아키하바라 점');
    }
  },
  {
    'stimagePath':
        'assets/travel_detail_images/incheon_airport_images/incheon5.png',
    'stname': '지하 1층',
    'stintroduce':
        '공항 철도를 탑승하거나 편의 시설을 이용할 층.\n주요 시설: 철도 대합실, 환전소, 식당가, 유실물 센터, 스파',
    'onTap': () {
      print('HEY 아키하바라');
    }
  },
  {
    'stimagePath':
        'assets/travel_detail_images/incheon_airport_images/incheon6.png',
    'stname': '4층',
    'stintroduce': '식당가나 라운지를 이용하며 쉬어가는 층.\n주요 시설: 식당가 / 면세 구역 내 라운지, 면세품 인도장',
    'onTap': () {
      print('타이토 스테이션 아키하바라 점');
    }
  },
];

List<String> imageList78 = [
  'assets/travel_detail_images/incheon_airport_images/incheon7.png',
  'assets/travel_detail_images/incheon_airport_images/incheon8.png',
];

List<String> imageList9 = [
  'assets/travel_detail_images/incheon_airport_images/incheon9.png',
];

List<String> imageList1011 = [
  'assets/travel_detail_images/incheon_airport_images/incheon10.png',
  'assets/travel_detail_images/incheon_airport_images/incheon11.png',
];

List<String> imageList12 = [
  'assets/travel_detail_images/incheon_airport_images/incheon12.png',
];

List<String> imageList13 = [
  'assets/travel_detail_images/incheon_airport_images/incheon13.png',
];

List<String> imageList14 = [
  'assets/travel_detail_images/incheon_airport_images/incheon14.png',
];

class IncheonAirport extends StatelessWidget {
  const IncheonAirport({super.key});

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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PlaceName("인천 국제공항", ""),
                StarAndHeart("3.0점", 3, "18명"),
                const SizedBox(
                  height: 15,
                ),
                PlaceImageSlide(
                    placeName: "인천 국제공항 제1터미널", imageList: placeImageList),
                PlaceDiscription(
                    "세계적으로 인정받는 만큼 최고의 시설과 서비스를 자랑하는 인천 국제공항",
                    "assets/travel_detail_images/incheon_airport_images/incheon2.png",
                    "",
                    "10년 연속 세계 최고 공항상 수상’에 빛나는 인천 국제공항. 세계적으로 인정받는 만큼 최고의 시설과 서비스를 자랑한다. 인천 국제공항을 100% 활용할 수 있는 공항 내 편의시설을 소개한다.",
                    false),
                const SizedBox(
                  height: 30,
                ),
                MainAirportDetail(airportdetail, false, false),
                const SizedBox(
                  height: 40,
                ),
                Setting(
                    "인포메이션",
                    "공항 1층과 3층 곳곳에 있는 인포메이션 센터. 공항 정보, 고객 지원 등 다양한 문의를 할 수 있다.",
                    "위치",
                    " • 1층 C, D 입국장 부근\n • 3층 일반구역 C, K 카운터 부근 / 8번 게이트 앞\n • 3층 면세구역 25, 29, 117번 게이트 앞",
                    "운영시간",
                    "24시간",
                    context,
                    imageList78),
                Setting(
                    "로밍 서비스",
                    "로밍을 원한다면 통신사에 전화할 수도 있고, 직접 공항 내 통신사를 방문하는 방법도 있다. 공항 내에는 주요 3사의 로밍센터가 1층, 3층 일반구역 및 면세구역 등에 걸쳐 있으니 자신의 위치에서 가까운 곳을 찾아가자.",
                    "위치",
                    " • 1층 A, F 입국장 부근\n • 3층 일반구역 H, F 카운터 부근\n • 3층 면세구역 27번 게이트 부근",
                    "운영시간",
                    " • 24시간: 1층 F 입국장 부근(KT, SKT, LG)\n • 그 외 이용시간: 06:00 ~ 22:00 (매장별 상이)",
                    context,
                    imageList9),
                Setting(
                    "포켓 와이파이",
                    "예약한 포켓 와이파이를 수령할 수 있는 곳은 공항 1층과 3층에 있다. 당일 대여를 해주기도 하지만, 수량이 많지 않아 대여가 안 될 수 있으니 예약하는 것을 권장한다. 현지에 도착해서는 전원을 켜고 포켓 와이파이 기기 뒤에 있는 SSID와 비밀번호를 기입하면 된다",
                    "위치",
                    " • 1층 A, F 입국장 / 7번 출입구 부근\n • 3층 일반구역 M-L 카운터 부근",
                    "운영시간",
                    " • 24시간: 1층 F 입국장 부근\n • 그 외 이용시간: 06:00 - 22:00",
                    context,
                    imageList1011),
                Setting(
                    "은행과 환전소",
                    "공항 내에 환전 업무를 도와줄 은행과 환전소가 지하, 1층, 3층 항공사 카운터 등 곳곳에 있다.",
                    "위치",
                    " • 지하 1층 중앙, 교통센터 부근\n • 1층 일반구역 4, 9, 11번 출입구 부근\n • 1층 수하물 수취구역 E 입국장 안\n • 3층 일반구역 D-E, F-G, J-K, L 카운터 / 4, 11번 출입구 부근\n • 3층 면세구역 25, 29, 121번 게이트 부근",
                    "운영시간",
                    " • 24시간: 1층 일반구역 9번 출입구 부근, 3층 일반구역 F-G 카운터 부근 (KB 국민은행)\n • 그 외 이용시간: 06:00 - 22:00 (매장별 상이)",
                    context,
                    imageList12),
                Setting(
                    "출국장 면세점",
                    "출국 심사까지 하고 나오면 면세 매장이 펼쳐진다. 향수, 화장품부터 명품, 주류, 식품 등 다양한 상품이 면세가격으로 준비되어 있으니 저렴한 가격에 구매해보자.",
                    "운영시간",
                    "06:30 - 21:30",
                    "",
                    "",
                    context,
                    imageList13),
                    Setting("입국장 면세점", "한국으로 돌아아서도 면세 쇼핑을 할 수 있다. 면세품을 여행 기간 동안 들고 다닐 필요 없어 편리하다.\n입국장 면세점의 구매 한도는 없지만, 면세 한도는 800달러. 화장품, 향수, 주류, 잡화, 담배 등을 판매하고 있으며, 고가 명품은 판매하지 않는다.", "위치", "1층 6-7, 16-17번 수하물 수취구역 부근", "운영시간", "24시간", context, imageList14)
              ],
            ),
          ))
        ],
      ),
    );
  }
}
