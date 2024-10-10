import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:school_trip_app/widgets/tirp_schdule_circles/blue_circle.dart';
import 'package:school_trip_app/widgets/tirp_schdule_circles/class_drop_down_menu.dart';
import 'package:school_trip_app/widgets/tirp_schdule_circles/custom_paint.dart';
import 'package:school_trip_app/widgets/tirp_schdule_circles/num_circle.dart';
import 'package:school_trip_app/widgets/tirp_schdule_circles/trip_schdule_cards.dart';

class TripSchduleScreen extends StatefulWidget {
  const TripSchduleScreen({super.key});

  @override
  State<TripSchduleScreen> createState() => _TripSchduleScreenState();
}

class _TripSchduleScreenState extends State<TripSchduleScreen> {
  late GoogleMapController _mapController;
  ScrollController _scrollController =
      ScrollController(); // ScrollController 추가
  double _maxSheetSize = 0.8; // DraggableScrollableSheet의 최대 크기

  final ClassDropDownMenu classDropDownMenu =
      const ClassDropDownMenu(); // ClassDropDownMenu 생성자 생성

  final List<LatLng> _locations = [
    const LatLng(34.6937249, 135.5022535), // 오사카
    const LatLng(35.6996473, 139.7713703), // 아키하바라
    const LatLng(35.6585805, 139.7454329), // 도쿄 타워
    const LatLng(35.6328964, 139.8803949), // 디즈니랜드
    const LatLng(35.7147654, 139.7966556), // 아사쿠사 신사
    const LatLng(35.7100627, 139.8107004), // 도쿄 스카이트리
    const LatLng(35.6594945, 139.7005536), // 시부야 스크램블
    const LatLng(35.7122857, 139.7741098), // 우에노 공원
    const LatLng(35.6605, 139.7292), // 롯폰기 힐즈
    const LatLng(35.5494, 139.7798), // 하네다 국제공항
  ];

  final List<String> _locationNames = [
    "오사카",
    "아키하바라",
    "도쿄 타워",
    "디즈니랜드",
    "아사쿠사 신사",
    "도쿄 스카이트리",
    "시부야 스크램블",
    "우에노 공원",
    "롯폰기 힐즈",
    "하네다 국제공항",
  ];

  // 지도의 초기 위치
  final LatLng _initialPosition =
      const LatLng(35.6996473, 139.7713703); // 아키하바라로 설정

  // 마커 설정 (각 위치에 이름을 마커의 infoWindow에 표시)
  Set<Marker> _createMarkers() {
    return _locations.asMap().entries.map((entry) {
      int index = entry.key;
      LatLng location = entry.value;

      return Marker(
        markerId: MarkerId('location_$index'),
        position: location,
        infoWindow: InfoWindow(
          title: _locationNames[index], // 위치 이름을 infoWindow에 표시
        ),
      );
    }).toSet();
  }

  void _onMapCreated(GoogleMapController controller) {
    _mapController = controller;
  }

  // 지도 위치를 해당 버튼의 장소로 이동하면서 줌을 조정하고, 시트의 최대 크기 변경 및 스크롤 맨 위로 이동
  void _moveCameraAndMinimizeSheet(LatLng target, double zoom) {
    _mapController.animateCamera(CameraUpdate.newLatLngZoom(target, zoom));

    // maxChildSize를 잠시 0.1로 변경한 후 다시 원래 값으로 복구
    setState(() {
      _maxSheetSize = 0.1; // 시트를 최소 크기로 줄임
    });

    // 스크롤을 맨 위로 이동
    _scrollController.animateTo(
      0,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );

    Future.delayed(const Duration(milliseconds: 300), () {
      setState(() {
        _maxSheetSize = 0.8; // 다시 원래 크기로 복구
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff4D9E8A),
          flexibleSpace: const Padding(
            padding: EdgeInsets.only(left: 59.0, top: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '도쿄 여행',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Ownglyph okticon',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
                Text(
                  "2024.10.22 ~ 10.25",
                  style: TextStyle(
                    fontFamily: "Ownglyph okticon",
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                    height: 16 / 12,
                  ),
                  textAlign: TextAlign.left,
                )
              ],
            ),
          ),
        ),
        body: Stack(
          children: [
            // Google Map 배경
            GoogleMap(
              onMapCreated: _onMapCreated,
              initialCameraPosition: CameraPosition(
                target: _initialPosition, // 초기 위치는 아키하바라로 설정
                zoom: 11.0, // 줌 레벨
              ),
              markers: _createMarkers(), // 마커 추가
            ),
            // DraggableScrollableSheet 추가
            DraggableScrollableSheet(
              initialChildSize: 0.05, // 시트의 초기 크기
              minChildSize: 0.05, // 최소 크기 비율
              maxChildSize: _maxSheetSize, // 상태에 따른 최대 크기
              builder:
                  (BuildContext context, ScrollController scrollController) {
                _scrollController = scrollController; // 외부 ScrollController에 연결
                return Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: CustomScrollView(
                    controller: _scrollController, // 스크롤 컨트롤러 추가
                    slivers: [
                      SliverToBoxAdapter(
                        child: Center(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Theme.of(context).hintColor,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                            ),
                            height: 3,
                            width: 50,
                            margin: const EdgeInsets.symmetric(vertical: 20),
                          ),
                        ),
                      ),
                      SliverList(
                        delegate: SliverChildListDelegate(
                          [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 22),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  buildDaySection(
                                    context,
                                    1,
                                    "Day 1",
                                    "6.4km",
                                    "15.0km",
                                    false,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      buildClassDroDownMenu(
                                        true,
                                      ),
                                      const SizedBox(
                                        height: 21,
                                      ),
                                      buildCardSection(
                                        "아",
                                        "으",
                                        "이",
                                        "1",
                                        "2",
                                        "3",
                                        () {},
                                        () {},
                                        () {},
                                        false,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

//
Widget buildCardSection(
  String title1,
  String title2,
  String title3,
  String discription1,
  String discription2,
  String discription3,
  Function onTap1,
  Function onTap2,
  Function onTap3,
  bool isTwo,
) {
  return isTwo
      ? Column(
          children: [
            SchduleCard(title1, discription1, onTap1),
            SchduleCard(title2, discription2, onTap2),
          ],
        )
      : Column(
          children: [
            SchduleCard(title1, discription1, onTap1),
            SchduleCard(title2, discription2, onTap2),
            SchduleCard(title3, discription3, onTap3),
          ],
        );
}

Widget buildClassDroDownMenu(
  bool isClassSelection,
) {
  return isClassSelection ? const ClassDropDownMenu() : Container();
}

// Day 구분 섹션
Widget buildDaySection(
  BuildContext context,
  int num,
  String day,
  String distance1,
  String distance2,
  bool isTwo,
) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color(0xff4D9E8A),
                width: 2,
              ),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(6, 2, 6, 2),
              child: Text(
                day,
                style: const TextStyle(
                  fontFamily: "Ownglyph okticon",
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff1a1a1a),
                  height: 16 / 12,
                ),
              ),
            ),
          ),
          Row(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    top: -1,
                    child: Container(
                      width: 2,
                      height: 218,
                      decoration: BoxDecoration(
                        color: const Color(0xffEEEEEE),
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      isTwo
                          ? Column(
                              children: [
                                const SizedBox(height: 17.5),
                                BlueCircle(),
                                const SizedBox(height: 9.5),
                                NumCircle(num),
                                const SizedBox(height: 13),
                                ArrowCustomPaint(distance1),
                                const SizedBox(height: 13),
                                NumCircle(num + 1),
                                const SizedBox(height: 13),
                                ArrowCustomPaint(distance2),
                              ],
                            )
                          : Column(
                              children: [
                                const SizedBox(height: 17.5),
                                BlueCircle(),
                                const SizedBox(height: 9.5),
                                NumCircle(num),
                                const SizedBox(height: 13),
                                ArrowCustomPaint(distance1),
                                const SizedBox(height: 13),
                                NumCircle(num + 1),
                                const SizedBox(height: 13),
                                ArrowCustomPaint(distance2),
                                const SizedBox(height: 13),
                                NumCircle(num + 2),
                              ],
                            )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
