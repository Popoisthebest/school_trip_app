import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:school_trip_app/widgets/tirp_schdule_circles/class_drop_down_menu.dart';
import 'package:school_trip_app/widgets/tirp_schdule_circles/class_schdules/five_schdule.dart';
import 'package:school_trip_app/widgets/tirp_schdule_circles/class_schdules/four_six_schdule.dart';
import 'package:school_trip_app/widgets/tirp_schdule_circles/class_schdules/one_three_nine_schdule.dart';
import 'package:school_trip_app/widgets/tirp_schdule_circles/class_schdules/seven_eight_schdule.dart';
import 'package:school_trip_app/widgets/tirp_schdule_circles/class_schdules/two_and_ten_schdule.dart';

class NewTripSchdulScreen extends StatefulWidget {
  const NewTripSchdulScreen({super.key});

  @override
  State<NewTripSchdulScreen> createState() => _NewTripSchdulScreenState();
}

class _NewTripSchdulScreenState extends State<NewTripSchdulScreen> {
  late GoogleMapController _mapController;
  ScrollController _scrollController = ScrollController();

  String _selectedClass = '1반';

  final List<LatLng> _locations = [
    const LatLng(34.6937249, 135.5022535),
    const LatLng(35.6996473, 139.7713703),
    const LatLng(35.6585805, 139.7454329),
    const LatLng(35.6328964, 139.8803949),
    const LatLng(35.7147654, 139.7966556),
    const LatLng(35.7100627, 139.8107004),
    const LatLng(35.6594945, 139.7005536),
    const LatLng(35.7122857, 139.7741098),
    const LatLng(35.6605, 139.7292),
    const LatLng(35.5494, 139.7798),
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

  final LatLng _initialPosition = const LatLng(35.6996473, 139.7713703);

  Set<Marker> _createMarkers() {
    return _locations.asMap().entries.map((entry) {
      int index = entry.key;
      LatLng location = entry.value;

      return Marker(
        markerId: MarkerId('location_$index'),
        position: location,
        infoWindow: InfoWindow(
          title: _locationNames[index],
        ),
      );
    }).toSet();
  }

  void _onMapCreated(GoogleMapController controller) {
    _mapController = controller;
  }

  // 선택된 반에 따라 적절한 스케줄 위젯을 반환하는 함수
  Widget _getScheduleWidget() {
    switch (_selectedClass) {
      case '2반':
      case '10반':
        return TwoAndTenSchdule(onClassSelected: _updateSelectedClass);
      case '1반':
      case '3반':
      case '9반':
        return OneThreeNineSchdule(onClassSelected: _updateSelectedClass);
      case '7반':
      case '8반':
        return SevenEightSchdule(onClassSelected: _updateSelectedClass);
      case '4반':
      case '6반':
        return FourSixSchdule(onClassSelected: _updateSelectedClass);
      default:
        return FiveTripSchdule(onClassSelected: _updateSelectedClass);
    }
  }

  void _updateSelectedClass(String selectedClass) {
    setState(() {
      _selectedClass = selectedClass; // 선택된 반 업데이트
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          GoogleMap(
            initialCameraPosition: CameraPosition(
              target: _initialPosition,
              zoom: 11.0,
            ),
            markers: _createMarkers(),
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.05,
            minChildSize: 0.05,
            maxChildSize: 0.8,
            builder: (BuildContext context, ScrollController scrollController) {
              _scrollController = scrollController;
              return Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: CustomScrollView(
                  controller: _scrollController,
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
                            padding: const EdgeInsets.symmetric(horizontal: 22),
                            child: Stack(
                              // alignment: Alignment.centerRight,
                              children: [
                                Positioned(
                                  right: 0,
                                  child: ClassDropDownMenu(
                                    onClassSelected: _updateSelectedClass,
                                  ),
                                ),
                                _getScheduleWidget()
                              ],
                            ), // 선택된 반에 따른 스케줄 표시
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
