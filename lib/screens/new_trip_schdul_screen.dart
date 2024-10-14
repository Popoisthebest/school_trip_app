import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:school_trip_app/widgets/tirp_schdule_components/class_drop_down_menu.dart';
import 'package:school_trip_app/widgets/tirp_schdule_components/class_schdules/five_schdule.dart';
import 'package:school_trip_app/widgets/tirp_schdule_components/class_schdules/four_six_schdule.dart';
import 'package:school_trip_app/widgets/tirp_schdule_components/class_schdules/one_three_nine_schdule.dart';
import 'package:school_trip_app/widgets/tirp_schdule_components/class_schdules/seven_eight_schdule.dart';
import 'package:school_trip_app/widgets/tirp_schdule_components/class_schdules/two_and_ten_schdule.dart';
import 'package:school_trip_app/widgets/tirp_schdule_components/map_component/map_component.dart';
import 'package:school_trip_app/widgets/tirp_schdule_components/map_lines/trip_schdule_route.dart';

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
      _selectedClass = selectedClass;
    });
  }

  void _onClassSelected(String selectedClass) {
    _updateLocations(selectedClass);
  }

  final LatLng _initialPosition = const LatLng(35.6996473, 139.7713703);

  void _onMapCreated(GoogleMapController controller) {
    _mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff4D9E8A),
        flexibleSpace: const Padding(
          padding: EdgeInsets.only(left: 29.0, bottom: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '도쿄 여행',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Ownglyph okticon',
                  fontWeight: FontWeight.w700,
                  height: 1.0,
                ),
              ),
              Text(
                '2024.10.22 ~ 10.25',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Ownglyph okticon',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Stack(
        children: [
          GoogleMapComponent(
            initialPosition: _initialPosition,
            locations: _locations,
            locationNames: _locationNames,
            onMapCreated: _onMapCreated,
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
                              children: [
                                Positioned(
                                  right: 0,
                                  child: ClassDropDownMenu(
                                    onClassSelected: _onClassSelected,
                                  ),
                                ),
                                _getScheduleWidget(),
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
