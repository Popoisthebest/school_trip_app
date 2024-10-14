import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:school_trip_app/widgets/travel_screens/basic_info.dart';
import 'package:school_trip_app/widgets/travel_screens/custom_app_bar.dart';
import 'package:school_trip_app/widgets/travel_screens/place_discription.dart';
import 'package:school_trip_app/widgets/travel_screens/place_image_slide.dart';
import 'package:school_trip_app/widgets/travel_screens/place_name.dart';
import 'package:school_trip_app/widgets/travel_screens/review.dart';
import 'package:school_trip_app/widgets/travel_screens/star_and_heart.dart';
import 'package:school_trip_app/widgets/travel_screens/store_info.dart';

List<String> placeImageList = [
  "assets/travel_detail_images/shinjukuhotel_images/shinjuku0.png",
  "assets/travel_detail_images/shinjukuhotel_images/shinjuku1.png",
  "assets/travel_detail_images/shinjukuhotel_images/shinjuku2.png",
  "assets/travel_detail_images/shinjukuhotel_images/shinjuku3.png",
  "assets/travel_detail_images/shinjukuhotel_images/shinjuku4.png",
  "assets/travel_detail_images/shinjukuhotel_images/shinjuku5.png",
  "assets/travel_detail_images/shinjukuhotel_images/shinjuku6.png",
  "assets/travel_detail_images/shinjukuhotel_images/shinjuku7.png",
  "assets/travel_detail_images/shinjukuhotel_images/shinjuku8.png",
];
List<String> reviewImageList = [
  "assets/travel_detail_images/shinjukuhotel_images/shinjuku9.png",
  "assets/travel_detail_images/shinjukuhotel_images/shinjuku10.png",
  "assets/travel_detail_images/shinjukuhotel_images/shinjuku11.png",
];

class ShinjukuhotelDetailScreen extends StatefulWidget {
  const ShinjukuhotelDetailScreen({super.key});

  @override
  _ShinjukuhotelDetailScreenState createState() =>
      _ShinjukuhotelDetailScreenState();
}

class _ShinjukuhotelDetailScreenState extends State<ShinjukuhotelDetailScreen> {
  // 보건 & 안전 섹션의 텍스트 가시성을 관리할 변수
  bool _isSafetyInfoVisible = false;
  //편의시설 섹션의 텍스트 가시성을 관리할 변수
  bool _isSafetyInfoVisible1 = false;
  //숙소 설명의 텍스트 가시성을 관리할 변수
  bool _isSafetyInfoVisible2 = false;

  void _toggleSafetyInfoVisibility() {
    setState(() {
      _isSafetyInfoVisible = !_isSafetyInfoVisible;
    });
  }

  void _toggleSafetyInfoVisibility1() {
    setState(() {
      _isSafetyInfoVisible1 = !_isSafetyInfoVisible1;
    });
  }

  void _toggleSafetyInfoVisibility2() {
    setState(() {
      _isSafetyInfoVisible2 = !_isSafetyInfoVisible2;
    });
  }

  @override
  Widget build(BuildContext context) {
    const TextStyle commonTextStyle = TextStyle(
      fontFamily: 'Ownglyph okticon',
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: Color(0xff000000),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          buildCustomAppBar(),
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: [
                PlaceName("신주쿠 워싱턴 호텔", "新宿ワシントンホテル"),
                StarAndHeart("4.0점", 4, "2.8만명"),
                const SizedBox(
                  height: 15,
                ),
                PlaceImageSlide(
                    placeName: "신주쿠 워싱턴 호텔 외관", imageList: placeImageList),
                PlaceDiscription(
                    "신주쿠 역 지하 광장과 연결된 호텔",
                    "assets/travel_detail_images/shinjukuhotel_images/shinjuku12.png",
                    "위치적 장점이 뛰어난 호텔",
                    '호텔은 신주쿠 역 지하 중앙 광장과 연결되어 있으며, 공항 리무진 버스 정류장이 바로 앞에 있어 하네다 국제공항까지 편리하게 이동할 수 있다. 무료로 야경을 감상할 수 있는 도쿄 도청사가 도보 4분 거리에 있어 야경을 감상하기에도 좋다'),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          Text(
                            "시티 뷰와 함께 식사를 즐길 수 있는 곳",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Ownglyph okticon',
                              color: const Color(0xFF1A1A1A).withOpacity(0.75),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Flexible(
                            child: Text(
                                "호텔에는 3개의 조식 레스토랑이 마련되어 있어 투숙객 취향에 맞는 레스토랑에서 식사를 즐길 수 있다. 특히, 본관 25층에 위치한 ‘맨해튼 테이블’은 탁 트인 시티 뷰와 함께 식사를 즐길 수 있어 투숙객들에게 인기 있는 곳이다.",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Ownglyph okticon',
                                  color:
                                      const Color(0xFF1A1A1A).withOpacity(0.75),
                                )),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                Container(
                  height: 30,
                  decoration: const BoxDecoration(
                    color: Color(0xffe0e0e0),
                  ),
                ),
                BasicInfo(
                    "(160-0023) Tokyo-to Tokyo 3-2-9 Nishishinjuku Shinjuku-ku",
                    "+81-3-3343-3111",
                    "https://shinjuku.washington-hotels.jp/kr/",
                    "신주쿠 역 O-2 출구에서 도보 3분",
                    true,
                    true),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              GestureDetector(
                                onTap: _toggleSafetyInfoVisibility,
                                child: Text(
                                  '보건 & 안전',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'Ownglyph okticon',
                                    color: Color(0xFF1A1A1A),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 6,
                              ),
                              GestureDetector(
                                onTap: _toggleSafetyInfoVisibility,
                                child: Icon(
                                  _isSafetyInfoVisible
                                      ? Icons.keyboard_arrow_up
                                      : Icons.keyboard_arrow_down,
                                  size: 24,
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          // 'howToGo' 텍스트가 가시성 상태에 따라 나타남
                          if (_isSafetyInfoVisible)
                            const Row(
                              children: [
                                SizedBox(
                                  width: 10,
                                ),
                                SingleChildScrollView(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text('1. 청소 & 소독',
                                          style: commonTextStyle),
                                      Text('• 투숙 공간 방역(퇴실시)',
                                          style: commonTextStyle),
                                      Text('• 투숙 사이 갭 적용',
                                          style: commonTextStyle),
                                      Text('• 전문업체 청소', style: commonTextStyle),
                                      Text('• 고온 세탁', style: commonTextStyle),
                                      Text('• 현지 가이드라인에 따른 세탁',
                                          style: commonTextStyle),
                                      Text('• 룸소독(매일)', style: commonTextStyle),
                                      Text('• 향상된 클리닝 조치 시행중',
                                          style: commonTextStyle),
                                      SizedBox(height: 16),
                                      Text('2. 사회적 거리두기',
                                          style: commonTextStyle),
                                      Text('• 직원 개인 보호 장비 착용',
                                          style: commonTextStyle),
                                      Text('• 직원과 투숙객 사이 칸막이 또는 물리적 차단',
                                          style: commonTextStyle),
                                      Text('• 공공장소에서 보호 스크린',
                                          style: commonTextStyle),
                                      Text('• 사회적 거리두기 규칙 준수',
                                          style: commonTextStyle),
                                      SizedBox(height: 16),
                                      Text('3. 안전 정책', style: commonTextStyle),
                                      Text('• 지역 당국에서 요구하는 모든 안전 수칙 숙지',
                                          style: commonTextStyle),
                                      Text('• 숙소 직원 안전 수칙 준수',
                                          style: commonTextStyle),
                                      Text('• 투숙객 및 직원 온도 체크',
                                          style: commonTextStyle),
                                      Text('• 투숙객 건강 상태 체크',
                                          style: commonTextStyle),
                                      Text('• 투숙객 안전 조치 시행',
                                          style: commonTextStyle),
                                      SizedBox(height: 16),
                                      Text('4. 비품 제공 및 관리',
                                          style: commonTextStyle),
                                      Text('• 손 소독제 비치',
                                          style: commonTextStyle),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          const SizedBox(
                            height: 16,
                          ),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: _toggleSafetyInfoVisibility1,
                                child: Text(
                                  '편의시설',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'Ownglyph okticon',
                                    color: Color(0xFF1A1A1A),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 6,
                              ),
                              GestureDetector(
                                onTap: _toggleSafetyInfoVisibility1,
                                child: Icon(
                                  _isSafetyInfoVisible1
                                      ? Icons.keyboard_arrow_up
                                      : Icons.keyboard_arrow_down,
                                  size: 24,
                                ),
                              )
                            ],
                          ),

                          const SizedBox(
                            height: 10,
                          ),

                          if (_isSafetyInfoVisible1)
                            Row(
                              children: [
                                const SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: SingleChildScrollView(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text('1. 인터넷', style: commonTextStyle),
                                        Text('• Wi-Fi(무료, 공공장소)',
                                            style: commonTextStyle),
                                        Text('• Wi-Fi', style: commonTextStyle),
                                        Text('• 인터넷', style: commonTextStyle),
                                        SizedBox(height: 16),

                                        Text('2. 식음료', style: commonTextStyle),
                                        Text('• 레스토랑', style: commonTextStyle),
                                        Text('• 레스토랑 수 – 15',
                                            style: commonTextStyle),
                                        Text('• 일식 레스토랑',
                                            style: commonTextStyle),
                                        Text('• 양식 레스토랑',
                                            style: commonTextStyle),
                                        Text('• 조식 (유료)',
                                            style: commonTextStyle),
                                        Text('• 바/라운지', style: commonTextStyle),
                                        Text('• 카페 수 – 1',
                                            style: commonTextStyle),
                                        Text('• 룸 서비스', style: commonTextStyle),
                                        Text('• 공용 전자레인지',
                                            style: commonTextStyle),
                                        Text('• 정수기', style: commonTextStyle),
                                        SizedBox(height: 16),

                                        Text('3. 컨시어지 서비스',
                                            style: commonTextStyle),
                                        Text('• 짐 보관 서비스',
                                            style: commonTextStyle),
                                        Text('• 프론트 데스크 (24시간)',
                                            style: commonTextStyle),
                                        Text('• 익스프레스 체크인/아웃',
                                            style: commonTextStyle),
                                        Text('• 컨시어지 서비스',
                                            style: commonTextStyle),
                                        Text('• 당직 지배인',
                                            style: commonTextStyle),
                                        Text('• 다국어 서비스 지원',
                                            style: commonTextStyle),
                                        Text('• 포터/벨보이',
                                            style: commonTextStyle),
                                        Text('• 도어맨', style: commonTextStyle),
                                        Text('• 프론트데스크 안전금고',
                                            style: commonTextStyle),
                                        Text('• 모닝콜 서비스',
                                            style: commonTextStyle),
                                        Text('• 환전 서비스',
                                            style: commonTextStyle),
                                        Text('• 우편 서비스',
                                            style: commonTextStyle),
                                        Text('• 버틀러 서비스',
                                            style: commonTextStyle),
                                        SizedBox(height: 16),

                                        Text('4. 건강 & 웰니스',
                                            style: commonTextStyle),
                                        Text('• 마사지', style: commonTextStyle),
                                        Text('• 바디 트리트먼트',
                                            style: commonTextStyle),
                                        Text('• 바디 스크럽',
                                            style: commonTextStyle),
                                        SizedBox(height: 16),

                                        Text('5. 청소 서비스',
                                            style: commonTextStyle),
                                        Text('• 세탁 서비스',
                                            style: commonTextStyle),
                                        Text('• 드라이클리닝',
                                            style: commonTextStyle),
                                        Text('• 다림질 서비스',
                                            style: commonTextStyle),
                                        Text('• 세탁 시설', style: commonTextStyle),
                                        SizedBox(height: 16),

                                        Text('6. 기타', style: commonTextStyle),
                                        // Flexible로 텍스트 길이 자동 조절
                                        Text(
                                          '• 옷장, 옷수납대, 다중언어 보이스메일 전화기, 텔레비전, LAN 고속인터넷, 냉장고, 구두주걱, 스마트폰 충전기, 큰 센트 금고, 바지프레스(프론트 데스크에 요청시 무료로 이용 가능), 다리미(프론트 데스크에 요청시 무료로 이용 가능)',
                                          style: commonTextStyle,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          const SizedBox(
                            height: 16,
                          ),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: _toggleSafetyInfoVisibility2,
                                child: Text(
                                  '숙소 설명',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'Ownglyph okticon',
                                    color: Color(0xFF1A1A1A),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 6,
                              ),
                              GestureDetector(
                                onTap: _toggleSafetyInfoVisibility2,
                                child: Icon(
                                  _isSafetyInfoVisible2
                                      ? Icons.keyboard_arrow_up
                                      : Icons.keyboard_arrow_down,
                                  size: 24,
                                ),
                              )
                            ],
                          ),

                          const SizedBox(
                            height: 10,
                          ),

                          if (_isSafetyInfoVisible2)
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  '도쿄 중심에 자리한 신주쿠 워싱턴 호텔 메인의 경우 도쿄 도청사에서 아주 가까우며 차로 5분 이내 거리에 신주쿠 교엔 국립정원 등이 있다.',
                                  style: commonTextStyle,
                                ),
                                SizedBox(height: 8),
                                Text(
                                  '이 호텔에서 메이지 신궁까지 2.5km 떨어져 있으며, 4.4km 거리에는 와세다 대학교가 있다.',
                                  style: commonTextStyle,
                                ),
                                SizedBox(height: 8),
                                Text(
                                  '15개의 레스토랑 및 커피숍/카페 등 여러 다이닝 옵션이 있다. 이 중에서 Manhattan Table에 들러 간단한 식사를 즐길 수 있다.',
                                  style: commonTextStyle,
                                ),
                                SizedBox(height: 8),
                                Text(
                                  '조식(뷔페) 06:30 ~ 10:00',
                                  style: commonTextStyle,
                                ),
                                SizedBox(
                                  height: 30,
                                )
                              ],
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  decoration: const BoxDecoration(
                    border: Border.symmetric(
                      horizontal: BorderSide(
                        color: Color(0xFFE0E0E0),
                        width: 2,
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 22.0,
                      top: 25,
                      bottom: 25,
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.warning_rounded,
                              size: 20,
                              color: Color(0xff757575),
                            ),
                            const SizedBox(width: 12),
                            Text(
                              "알레르기 유발 품목",
                              style: const TextStyle(
                                color: Color(0xFF1A1A1A),
                                fontSize: 16,
                                fontFamily: 'Ownglyph okticon',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 4),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 32.0, right: 20), // 왼쪽에 32px 여백 추가
                          child: Text(
                            "난류, 우유, 땅콩, 대두, 밀, 새우, 돼지고기, 토마토, 호두, 닭고기, 쇠고기, 잣",
                            style: const TextStyle(
                              color: Color(0xFF1A1A1A),
                              fontSize: 12,
                              fontFamily: 'Ownglyph okticon',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  
                ),
                // Container(
                //   decoration: const BoxDecoration(
                //     border: Border.symmetric(
                //       horizontal: BorderSide(
                //         color: Color(0xFFE0E0E0),
                //         width: 2,
                //       ),
                //     ),
                //   ),
                // ),
                SizedBox(height: 30,),
                Container(
                  height: 30,
                  decoration: const BoxDecoration(
                    color: Color(0xffe0e0e0),
                  ),
                ),
                Review(
                    reviewContext:
                        "신주쿠역에서 가까운 깨끗한 호텔임. 일본여행의 기지로서 넓지는 않지만 있어야 할 것은 모두 갖추고 있는 호텔. 많은 외국손님들이 있기 때문에 우리가 기본예절과 공공질서를 잘 지켜야 할 곳.",
                    imageList: reviewImageList),
                const SizedBox(height: 50),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
