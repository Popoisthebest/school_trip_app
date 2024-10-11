import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:school_trip_app/widgets/tirp_schdule_circles/class_drop_down_menu.dart';
import 'package:school_trip_app/widgets/tirp_schdule_circles/class_schdules/five_schdule.dart';
import 'package:school_trip_app/widgets/tirp_schdule_circles/class_schdules/four_six_schdule.dart';
import 'package:school_trip_app/widgets/tirp_schdule_circles/class_schdules/one_three_nine_schdule.dart';
import 'package:school_trip_app/widgets/tirp_schdule_circles/class_schdules/seven_eight_schdule.dart';
import 'package:school_trip_app/widgets/tirp_schdule_circles/class_schdules/two_and_ten_schdule.dart';
import 'package:school_trip_app/widgets/tirp_schdule_circles/map_lines/trip_schdule_route.dart';

class NewTripSchdulScreen extends StatefulWidget {
  const NewTripSchdulScreen({super.key});

  @override
  State<NewTripSchdulScreen> createState() => _NewTripSchdulScreenState();
}

class _NewTripSchdulScreenState extends State<NewTripSchdulScreen> {
  late GoogleMapController _mapController;
  ScrollController _scrollController = ScrollController();

  String _selectedClass = '1반';
  List<LatLng> _locations = [];
  List<String> _locationNames = [];

  @override
  void initState() {
    super.initState();
    _updateLocations(_selectedClass);
  }

  void _updateLocations(String selectedClass) {
    setState(() {
      _locations = TripScheduleRoutes.getRouteForClass(selectedClass);
      _locationNames =
          TripScheduleRoutes.getLocationNamesForClass(selectedClass);
    });
  }

  void _onClassSelected(String selectedClass) {
    _selectedClass = selectedClass;
  }

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

  // void _updateSelectedClass(String selectedClass) {
  //   setState(() {
  //     _selectedClass = selectedClass; // 선택된 반 업데이트
  //   });
  // }

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
            onMapCreated: (controller) {
              _mapController = controller;
            },
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
                                    onClassSelected: _onClassSelected,
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

  // 선택된 반에 따라 적절한 스케줄 위젯을 반환하는 함수
  Widget _getScheduleWidget() {
    switch (_selectedClass) {
      case '2반':
      case '10반':
        return TwoAndTenSchdule(onClassSelected: _onClassSelected);
      case '1반':
      case '3반':
      case '9반':
        return OneThreeNineSchdule(onClassSelected: _onClassSelected);
      case '7반':
      case '8반':
        return SevenEightSchdule(onClassSelected: _onClassSelected);
      case '4반':
      case '6반':
        return FourSixSchdule(onClassSelected: _onClassSelected);
      default:
        return FiveTripSchdule(onClassSelected: _onClassSelected);
    }
  }
}
