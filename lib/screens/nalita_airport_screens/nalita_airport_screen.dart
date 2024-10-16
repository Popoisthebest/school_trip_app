import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:school_trip_app/widgets/nalita_airport_screens/floor_information.dart';
import 'package:school_trip_app/widgets/travel_screens/basic_info.dart';
import 'package:school_trip_app/widgets/travel_screens/custom_app_bar.dart';
import 'package:school_trip_app/widgets/travel_screens/disney_componets/detail_text.dart';
import 'package:school_trip_app/widgets/travel_screens/place_discription.dart';
import 'package:school_trip_app/widgets/travel_screens/place_image_slide.dart';
import 'package:school_trip_app/widgets/travel_screens/place_name.dart';
import 'package:school_trip_app/widgets/travel_screens/review.dart';
import 'package:school_trip_app/widgets/travel_screens/star_and_heart.dart';

List<String> placeImageList = [
  'assets/nalita_airport_screen_images/nalita_airport1_image.png'
];

List<String> reviewImageList = [
  'assets/travel_detail_images/odaiba_images/odaiba_review_image1.jpeg',
  'assets/travel_detail_images/odaiba_images/odaiba_review_image2.jpeg',
  'assets/travel_detail_images/odaiba_images/odaiba_review_image3.png',
];

class NalitaAirportScreen extends StatelessWidget {
  NalitaAirportScreen({super.key});
  final ValueNotifier<int> currentPage = ValueNotifier<int>(0);

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
                  const Padding(
                    padding: EdgeInsets.only(top: 13, left: 20),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '나리타 국제공항',
                              style: TextStyle(
                                color: Color(0xFF1A1A1A),
                                fontSize: 24,
                                fontFamily: 'Ownglyph okticon',
                                fontWeight: FontWeight.w700,
                                height: 0,
                              ),
                            ),
                            SizedBox(height: 10),
                          ],
                        ),
                      ],
                    ),
                  ),
                  StarAndHeart("3.0점", 3, "18명"),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      Container(
                        height: 2, // 선의 높이
                        color: const Color(0XFF4D9E8A), // 초록색 선
                      ),
                      Column(
                        children: [
                          const SizedBox(
                            height: 30,
                          ),
                          Stack(
                            children: [
                              SizedBox(
                                height: 220,
                                child: PageView.builder(
                                  itemCount: placeImageList.length,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10.0),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.asset(
                                          placeImageList[index],
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    );
                                  },
                                  onPageChanged: (index) {
                                    currentPage.value = index;
                                  },
                                ),
                              ),
                              Positioned(
                                top: 10,
                                right: 20,
                                child: Container(
                                  decoration: ShapeDecoration(
                                    color: Colors.black.withOpacity(0.5),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 13, vertical: 5),
                                    child: ValueListenableBuilder<int>(
                                      valueListenable: currentPage,
                                      builder: (context, value, child) {
                                        return Text(
                                          "${value + 1}/${placeImageList.length}",
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 30),
                          Container(
                            height: 2,
                            decoration:
                                const BoxDecoration(color: Color(0xff4D9E8A)),
                          )
                        ],
                      ),
                      const SizedBox(height: 30),
                      PlaceDiscription(
                        "세계로 향하는 관문, 편리한 서비스와 \n쇼핑의 천국 나리타 국제공항",
                        "assets/nalita_airport_screen_images/nalita_airport2_image.png",
                        "편리한 서비스로 맞이하는 나리타공항",
                        "나리타 국제공항은 아시아와 북미를 잇는 대표적인 허브공항으로써 수많은 해외 여행자들이 공항을 이용하고 있다. 총 3개의 터미널이 있으며 터미널 간 이동은 셔틀버스로 한다. 도쿄 도심에서는 약 60km 떨어져 있지만, 철도와 버스가 잘 갖추어져 있어 시내로의 이동이 편리하다.",
                        false,
                      ),
                      const SizedBox(height: 30),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Column(
                          children: [
                            const Row(
                              children: [
                                Text(
                                  '나리타 국제공항 상세정보',
                                  style: TextStyle(
                                    color: Color(0xBF1A1A1A),
                                    fontSize: 20,
                                    fontFamily: 'Ownglyph okticon',
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                )
                              ],
                            ),
                            DetailText('1978년 치바현 나리터 시에 개항한 국제공항', false),
                            DetailText('3개의 터미널이 운영중', false),
                            DetailText('IATA : NRT, ICAO : RJAA', false),
                          ],
                        ),
                      ),
                      const SizedBox(height: 30),
                      const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 10.0),
                            child: Text(
                              '터미널별 층안내',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Ownglyph okticon',
                                color: Color(0xFF1A1A1A),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Column(
                          children: [
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  FloorInformation(
                                      'assets/nalita_airport_screen_images/nalita_airport3_image.png',
                                      '1터미널',
                                      '지하 1층: JR 역, 주차장',
                                      '1-2층: 국제선 입국장 / 국내선 출국장',
                                      '3층: 출국 심사대 / 탑승 게이트 / 면세점',
                                      '4층: 국제선 출국장 / 레스토랑 / 상점',
                                      '5층: 푸드코트'),
                                  const SizedBox(width: 10),
                                  FloorInformation(
                                      'assets/nalita_airport_screen_images/nalita_airport4_image.png',
                                      '2터미널',
                                      '지하 1층: JR 역, 주차장',
                                      '1층: 국제선 입국장',
                                      '2층: 주차장 연결 통로',
                                      '3층: 국제선 출국장 / 면세점/ 레스토랑',
                                      '4층: 레스토랑'),
                                  const SizedBox(width: 10),
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            width: 300,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: const Color(0xff4D9E8A)),
                                            child: Column(
                                              children: [
                                                // 이 부분 사진이 Container에 딱 맞게 안 들어가서 수정함.
                                                SizedBox(
                                                  width: 300,
                                                  height: 150,
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        const BorderRadius.only(
                                                            topLeft:
                                                                Radius.circular(
                                                                    10),
                                                            topRight:
                                                                Radius.circular(
                                                                    10)),
                                                    child: Image.asset(
                                                      'assets/nalita_airport_screen_images/nalita_airport5_image.png',
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 10.0),
                                                  child: Column(
                                                    children: [
                                                      const Row(
                                                        children: [
                                                          Text(
                                                            '3터미널',
                                                            style: TextStyle(
                                                              fontSize: 20,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              color:
                                                                  Colors.white,
                                                              fontFamily:
                                                                  'Ownglyph okticon',
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                      Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            '• ', // 점을 추가합니다.
                                                            style: TextStyle(
                                                              height: 0.9,
                                                              fontSize: 18,
                                                              color: Colors
                                                                  .white
                                                                  .withOpacity(
                                                                      0.75),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Text(
                                                              '1층: 입국장',
                                                              style: TextStyle(
                                                                color: Colors
                                                                    .white
                                                                    .withOpacity(
                                                                        0.75),
                                                                fontSize: 14,
                                                                fontFamily:
                                                                    'Ownglyph okticon',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            '• ', // 점을 추가합니다.
                                                            style: TextStyle(
                                                              height: 0.9,
                                                              fontSize: 18,
                                                              color: Colors
                                                                  .white
                                                                  .withOpacity(
                                                                      0.75),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Text(
                                                              '2층: 출국장',
                                                              style: TextStyle(
                                                                color: Colors
                                                                    .white
                                                                    .withOpacity(
                                                                        0.75),
                                                                fontSize: 14,
                                                                fontFamily:
                                                                    'Ownglyph okticon',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            '• ', // 점을 추가합니다.
                                                            style: TextStyle(
                                                              height: 0.9,
                                                              fontSize: 18,
                                                              color: Colors
                                                                  .white
                                                                  .withOpacity(
                                                                      0.75),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Text(
                                                              '3층: 출국 심사대 / 탑승게이트 / 면세점',
                                                              style: TextStyle(
                                                                color: Colors
                                                                    .white
                                                                    .withOpacity(
                                                                        0.75),
                                                                fontSize: 14,
                                                                fontFamily:
                                                                    'Ownglyph okticon',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      const SizedBox(
                                                          height: 45),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 30),
                      Container(
                        height: 2,
                        decoration:
                            const BoxDecoration(color: Color(0x1a1a1a40)),
                      ),
                      const SizedBox(height: 50),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  '인포메이션',
                                  style: TextStyle(
                                    color: Color(0xFF1A1A1A),
                                    fontSize: 20,
                                    fontFamily: 'Ownglyph okticon',
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Flexible(
                                  child: Text(
                                    '여행 지도 및 리플릿 등 일본 관광 관련 정보를 얻을 수 있는 관광 안내소(Visiter Service Center)는 제1터미널 중앙빌딩 1층, 제2터미널 본관 1층에 있다. 3터미널에는 없으니 2터미널 안내소를 이용해야 한다.',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontFamily: 'Ownglyph okticon',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 30),
                            Row(
                              children: [
                                Text(
                                  '위치',
                                  style: TextStyle(
                                    color: Color(0xBF1A1A1A),
                                    fontSize: 16,
                                    fontFamily: 'Ownglyph okticon',
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  '1터미널 중앙빌딩 1층, 2터미널 1층',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: 'Ownglyph okticon',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 30),
                            Row(
                              children: [
                                Text(
                                  '운영시간',
                                  style: TextStyle(
                                    color: Color(0xBF1A1A1A),
                                    fontSize: 16,
                                    fontFamily: 'Ownglyph okticon',
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  '08:00 - 20:00',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: 'Ownglyph okticon',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 30),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 19.0),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 19.0),
                                child: Row(
                                  children: [
                                    Container(
                                      width: 337,
                                      height: 202,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          width: 1,
                                          color: Colors.black,
                                        ),
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.asset(
                                          'assets/nalita_airport_screen_images/nalita_airport_information1_image.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    Container(
                                      width: 337,
                                      height: 202,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          width: 1,
                                          color: Colors.black,
                                        ),
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.asset(
                                          'assets/nalita_airport_screen_images/nalita_airport_information2_image.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 50.5),
                          Container(
                            height: 2,
                            color: const Color(0xFF1A1A1A),
                          ),
                          const SizedBox(height: 50),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Column(
                              children: [
                                const Row(
                                  children: [
                                    Text(
                                      '환전소',
                                      style: TextStyle(
                                        color: Color(0xFF1A1A1A),
                                        fontSize: 20,
                                        fontFamily: 'Ownglyph okticon',
                                        fontWeight: FontWeight.w700,
                                        height: 0,
                                      ),
                                    )
                                  ],
                                ),
                                const Row(
                                  children: [
                                    Flexible(
                                      child: Text(
                                        '모든 터미널 곳곳에 환전소가 있어 환전 업무를 손쉽게 볼 수 있다. 환전소 별로 호나율이 다르기 때문에 몇 곳을 비교해 본 후 환전을 하도록 하자.',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontFamily: 'Ownglyph okticon',
                                          fontWeight: FontWeight.w400,
                                          height: 0,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(height: 30),
                                const Row(
                                  children: [
                                    Text(
                                      '위치',
                                      style: TextStyle(
                                        color: Color(0xBF1A1A1A),
                                        fontSize: 16,
                                        fontFamily: 'Ownglyph okticon',
                                        fontWeight: FontWeight.w700,
                                        height: 0,
                                      ),
                                    )
                                  ],
                                ),
                                DetailText('1터미널 지하 1층, 1, 3, 4층', false),
                                DetailText('2터미널 지하 1층, 1, 3층', false),
                                DetailText('3터미널 1, 2, 3층', false),
                                const SizedBox(height: 30),
                                const Row(
                                  children: [
                                    Text(
                                      '운영시간',
                                      style: TextStyle(
                                        color: Color(0xBF1A1A1A),
                                        fontSize: 16,
                                        fontFamily: 'Ownglyph okticon',
                                        fontWeight: FontWeight.w700,
                                        height: 0,
                                      ),
                                    )
                                  ],
                                ),
                                const Row(
                                  children: [
                                    Text(
                                      '07:30 - 21:30',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontFamily: 'Ownglyph okticon',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 30),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 19.0),
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 19.0),
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 337,
                                          height: 202,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              width: 1,
                                              color: Colors.black,
                                            ),
                                            color: Colors.black,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            child: Image.asset(
                                              'assets/nalita_airport_screen_images/nalita_currency_exchange1_image.png',
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(width: 10),
                                        Container(
                                          width: 337,
                                          height: 202,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              width: 1,
                                              color: Colors.black,
                                            ),
                                            color: Colors.black,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            child: Image.asset(
                                              'assets/nalita_airport_screen_images/nalita_currency_exchange2_image.png',
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(width: 10),
                                        Container(
                                          width: 337,
                                          height: 202,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              width: 1,
                                              color: Colors.black,
                                            ),
                                            color: Colors.black,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            child: Image.asset(
                                              'assets/nalita_airport_screen_images/nalita_currency_exchange3_image.png',
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(width: 10),
                                        Container(
                                          width: 337,
                                          height: 202,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              width: 1,
                                              color: Colors.black,
                                            ),
                                            color: Colors.black,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            child: Image.asset(
                                              'assets/nalita_airport_screen_images/nalita_currency_exchange4_image.png',
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(width: 10),
                                        Container(
                                          width: 337,
                                          height: 202,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              width: 1,
                                              color: Colors.black,
                                            ),
                                            color: Colors.black,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            child: Image.asset(
                                              'assets/nalita_airport_screen_images/nalita_currency_exchange5_image.png',
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(width: 10),
                                        Container(
                                          width: 337,
                                          height: 202,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              width: 1,
                                              color: Colors.black,
                                            ),
                                            color: Colors.black,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            child: Image.asset(
                                              'assets/nalita_airport_screen_images/nalita_currency_exchange6_image.png',
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(width: 10),
                                        Container(
                                          width: 337,
                                          height: 202,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              width: 1,
                                              color: Colors.black,
                                            ),
                                            color: Colors.black,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            child: Image.asset(
                                              'assets/nalita_airport_screen_images/nalita_currency_exchange7_image.png',
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(width: 10),
                                        Container(
                                          width: 337,
                                          height: 202,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              width: 1,
                                              color: Colors.black,
                                            ),
                                            color: Colors.black,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            child: Image.asset(
                                              'assets/nalita_airport_screen_images/nalita_currency_exchange8_image.png',
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(width: 10),
                                        Container(
                                          width: 337,
                                          height: 202,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              width: 1,
                                              color: Colors.black,
                                            ),
                                            color: Colors.black,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            child: Image.asset(
                                              'assets/nalita_airport_screen_images/nalita_currency_exchange9_image.png',
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 50.5,
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
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
