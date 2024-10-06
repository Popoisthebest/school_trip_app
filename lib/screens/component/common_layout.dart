import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:school_trip_app/screens/main_screen.dart';
import 'package:school_trip_app/screens/trip_schdule_screen.dart';
import 'package:school_trip_app/screens/trip_tool_screen.dart';

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
  bool isToggle = true;
  late int _selectedIndex;

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.currentIndex;
  }

  // 각 탭에 해당하는 화면 리스트
  final List<Widget> _screens = [
    const MainScreen(),
    const TripSchduleScreen(),
    const TripToolScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; // 선택된 탭을 업데이트해서 body만 다시 그리게 함
    });
  }

  Widget _buildBottomNavigationBar() {
    return SizedBox(
      height: 100,
      child: SafeArea(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    _buildBottomNavigationItems('홈', 'home', 0),
                    _buildBottomNavigationItems('여행일정', 'map', 1),
                    _buildBottomNavigationItems('여행도구', 'tool', 2),
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

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
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
                      onPressed: () {
                        setState(() {
                          isToggle = !isToggle;
                        });
                      },
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
        ),
        bottomNavigationBar: _buildBottomNavigationBar(),
        body: _screens[_selectedIndex], // 선택된 탭에 해당하는 화면만 갱신
      ),
    );
  }
}
