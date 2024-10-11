import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:school_trip_app/screens/main_screens/main_screen.dart';
import 'package:school_trip_app/screens/place_screens/place_screen.dart';
import 'package:school_trip_app/screens/search_screens/search_screen.dart';
import 'package:school_trip_app/screens/travel_screens/odaiba_detail_screen.dart';
import 'package:school_trip_app/screens/travel_screens/travel_screen.dart';
import 'package:school_trip_app/screens/trip_schdule_screens/trip_schdule_screen.dart';
import 'package:school_trip_app/screens/trip_tool_screens/trip_tool_screen.dart';

class CommonLayout extends StatefulWidget {
  final int currentIndex;

  const CommonLayout({
    super.key,
    required this.currentIndex,
  });

  @override
  State<CommonLayout> createState() => _CommonLayoutState();
}

class _CommonLayoutState extends State<CommonLayout> {
  bool isToggle = true; // 초기 토글 상태 (true: 온라인 모드, false: 오프라인 모드)
  bool isManualOffline = false; // 수동 오프라인 모드 상태
  late int _selectedIndex;

  final Connectivity _connectivity = Connectivity(); // 패키지 인스턴스 생성
  late StreamSubscription<ConnectivityResult> _subscription;
  Timer? _timer; // 네트워크 상태를 주기적으로 확인할 타이머

  @override
  void initState() {
    super.initState();

    _selectedIndex = widget.currentIndex;

    // 네트워크 상태를 구독하고 상태에 따라 토글 상태를 변경
    _subscription = _connectivity.onConnectivityChanged.listen((result) {
      if (!isManualOffline) {
        // 수동 오프라인 모드가 아닐 때만 상태 업데이트
        setState(() {
          if (result == ConnectivityResult.mobile ||
              result == ConnectivityResult.wifi) {
            isToggle = true; // 네트워크 연결됨
          } else {
            isToggle = false; // 네트워크 연결 끊김
          }
          print(result.toString());
        });
      }
    });

    // 주기적으로 네트워크 상태를 확인하는 타이머 설정
    _timer = Timer.periodic(const Duration(seconds: 5), (timer) async {
      if (!isManualOffline) {
        // 수동 모드가 아닐 때만 주기적으로 네트워크 상태 확인
        var connectivityResult = await _connectivity.checkConnectivity();
        setState(() {
          if (connectivityResult == ConnectivityResult.mobile ||
              connectivityResult == ConnectivityResult.wifi) {
            isToggle = true; // 네트워크 연결됨
          } else {
            isToggle = false; // 네트워크 연결 끊김
          }
          print(
              "Checked connectivity manually: ${connectivityResult.toString()}");
        });
      }
    });
  }

  @override
  void dispose() {
    _subscription.cancel(); // 네트워크 구독 해제
    _timer?.cancel(); // 타이머 해제
    super.dispose();
  }

  // 각 탭에 해당하는 화면 리스트
  final List<Widget> _screens = [
    const MainScreen(),
    const SearchScreen(),
    const TripSchduleScreen(),
    const OdaibaDetailScreen(),
    const TripToolScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; // 선택된 탭을 업데이트해서 body만 다시 그리게 함
    });
  }

  Widget _buildBottomNavigationBar() {
    return SizedBox(
      height: 70,
      child: SafeArea(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Container(
                height: 1,
                color: const Color(0xff4D9E8A),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    _buildBottomNavigationItems('홈', 'home', 0),
                    _buildBottomNavigationItems('검색', 'search', 1),
                    _buildBottomNavigationItems('여행일정', 'map', 2),
                    _buildBottomNavigationItems('여행장소', 'place', 3),
                    _buildBottomNavigationItems('여행도구', 'tool', 4),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBottomNavigationItems(
      String name, String assetName, int selectedIndex) {
    return Flexible(
      child: IconButton(
        padding: EdgeInsets.zero,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onPressed: () {
          _onItemTapped(selectedIndex);
        },
        icon: Column(
          children: [
            Image.asset(
              _selectedIndex == selectedIndex
                  ? 'assets/bottom_nav_bar_icons/${assetName}_active_icon.png'
                  : 'assets/bottom_nav_bar_icons/${assetName}_icon.png',
              height: 20,
              width: 20,
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              name,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Color(0xFF94C5B9),
                fontSize: 12,
                fontWeight: FontWeight.w700,
                height: 1.2,
              ),
            ),
          ],
        ),
      ),
    );
  }

  // 토글 버튼을 눌렀을 때 수동 모드로 오프라인 전환 또는 온라인 복귀 처리
  void _toggleManualMode() {
    setState(() {
      if (isManualOffline) {
        // 수동 오프라인 모드에서 다시 온라인 모드로 전환할 때
        isManualOffline = false;
        isToggle = true; // 버튼을 누르면 일단 true로 상태 변경
      } else {
        // 수동으로 오프라인 모드로 전환할 때
        isManualOffline = true;
        isToggle = false; // 네트워크 감지를 멈추고 수동으로 오프라인 모드 설정
      }
    });
  }

  // AppBar를 특정 페이지에서만 적용
  PreferredSizeWidget? _buildAppBar() {
    if (_selectedIndex == 0 || _selectedIndex == 1 || _selectedIndex == 4) {
      // 홈 또는 검사 또는 여행 도구 페이지에서만 AppBar 적용
      return AppBar(
        backgroundColor: const Color(0xFF4D9E8A),
        flexibleSpace: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Row(
                children: [
                  Image.asset('assets/logo/dashin_LOGO.png'),
                  const SizedBox(width: 8),
                  const Text(
                    'MyDaeShinTrip',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      height: 1.2,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 9.0),
              child: Row(
                children: [
                  SvgPicture.asset('assets/app_bar_icons/phone_icon.svg'),
                  const SizedBox(width: 13),
                  SvgPicture.asset('assets/app_bar_icons/map_icon.svg'),
                  const SizedBox(width: 3),
                  IconButton(
                    padding: EdgeInsets.zero,
                    constraints: const BoxConstraints(),
                    highlightColor: Colors.transparent,
                    onPressed: _toggleManualMode, // 수동 모드 전환 기능 호출
                    icon: Image.asset(
                      isToggle
                          ? 'assets/app_bar_icons/toggle_on_icon.png'
                          : 'assets/app_bar_icons/toggle_off_icon.png',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }
    return null; // 나머지 페이지에서는 AppBar 없음
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(), // AppBar를 조건부로 적용
        bottomNavigationBar: _buildBottomNavigationBar(), // 모든 페이지에 공통 적용
        body: _screens[_selectedIndex], // 선택된 탭에 해당하는 화면만 갱신
      ),
    );
  }
}
