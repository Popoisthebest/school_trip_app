import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class TripSchduleScreen extends StatefulWidget {
  const TripSchduleScreen({super.key});

  @override
  State<TripSchduleScreen> createState() => _TripSchduleScreenState();
}

class _TripSchduleScreenState extends State<TripSchduleScreen> {
  late GoogleMapController _mapController;

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

  // 지도의 초기 위치
  final LatLng _initialPosition =
      const LatLng(35.6996473, 139.7713703); // 아키하바라로 설정

  void _onMapCreated(GoogleMapController controller) {
    _mapController = controller;
  }

  // 지도 위치를 해당 버튼의 장소로 이동
  void _moveCamera(LatLng target) {
    _mapController.animateCamera(CameraUpdate.newLatLng(target));
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
              markers: const {
                // 추후에 추가할 수 있습니다.
              },
            ),
            // DraggableScrollableSheet 추가
            DraggableScrollableSheet(
              initialChildSize: 0.2, // 시트가 처음 나타날 때 차지하는 크기 비율
              minChildSize: 0.1, // 최소 크기 비율
              maxChildSize: 0.8, // 최대 크기 비율
              builder:
                  (BuildContext context, ScrollController scrollController) {
                return Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: CustomScrollView(
                    controller: scrollController, // 스크롤 컨트롤러 추가
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
                            buildDaySection(context, "Day 1"),
                            buildPlaceCard(
                                context,
                                "아키하바라 전자거리",
                                "관광 명소 · 전자상가 · 만화 · 애니메이션",
                                "15.6km",
                                _locations[1]),
                            buildPlaceCard(
                                context,
                                "도쿄 타워",
                                "전망대 · 랜드마크 · 사진 · 도쿄 야경",
                                "6.1km",
                                _locations[2]),
                            buildPlaceCard(
                                context,
                                "디즈니랜드",
                                "놀이공원 · 어트랙션 · 디즈니 · 유아체험존",
                                "19.8km",
                                _locations[3]),
                            buildDaySection(context, "Day 2"),
                            buildPlaceCard(context, "아사쿠사 신사",
                                "전통 건축물 · 유서 깊은 랜드마크", "15km", _locations[4]),
                            buildPlaceCard(context, "도쿄 스카이트리",
                                "전망대 · 랜드마크 · 도쿄 야경", "18km", _locations[5]),
                            buildPlaceCard(context, "시부야 스크램블",
                                "인기 관광지 · 쇼핑몰 · 상점가", "12km", _locations[6]),
                            buildDaySection(context, "Day 3"),
                            buildPlaceCard(context, "우에노 공원", "문화 명소 · 공원 · 역사",
                                "4.5km", _locations[7]),
                            buildPlaceCard(context, "롯폰기 힐즈", "랜드마크 · 고급 상점가",
                                "25.2km", _locations[8]),
                            buildDaySection(context, "Day 4"),
                            buildPlaceCard(context, "하네다 국제공항", "국제 공항 · 면세점",
                                "18.7km", _locations[9]),
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

  // 장소 카드 - 각 장소의 좌표를 받아서 누르면 해당 좌표로 지도를 이동
  Widget buildPlaceCard(BuildContext context, String title, String description,
      String distance, LatLng location) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: InkWell(
        onTap: () {
          _moveCamera(location); // 장소를 누르면 해당 좌표로 이동
        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Column(
              children: [
                CircleAvatar(
                  radius: 10,
                  child: Text('1'),
                ),
                VerticalDivider(
                  color: Colors.green,
                  thickness: 2,
                ),
              ],
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: const BorderSide(color: Colors.green),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      Text(description),
                      const SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(distance),
                          const Icon(Icons.directions_walk),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Day 구분 섹션
Widget buildDaySection(BuildContext context, String day) {
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: Row(
      children: [
        Text(
          day,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const Spacer(),
        const Icon(Icons.filter_list),
      ],
    ),
  );
}
