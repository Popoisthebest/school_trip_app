import 'package:flutter/material.dart';
import 'package:school_trip_app/screens/main_screen.dart';
import 'package:school_trip_app/screens/trip_schdule_screen.dart';
import 'package:school_trip_app/screens/trip_tool_screen.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int _selectedIndex = 0;

  // 각 탭에 해당하는 화면 리스트
  final List<Widget> _screens = [
    const MainScreen(),
    const TripSchduleScreen(),
    const TripToolScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget _buildBottomNavigationBar(BuildContext context) {
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

        // child: BottomNavigationBar(
        //     type: BottomNavigationBarType.fixed,
        //     selectedItemColor: const Color(0xff4D9E8A),
        //     unselectedItemColor: const Color(0xff4D9E8A),
        //     items: [
        //       BottomNavigationBarItem(
        //         icon: Image.asset('/bottom_nav_bar_icons/home_icon.png'),
        //         label: '홈',
        //         activeIcon: Image.asset(
        //             '/bottom_nav_bar_icons/home_active_icon.png'),
        //       ),
        //       BottomNavigationBarItem(
        //           icon: Image.asset('/bottom_nav_bar_icons/map_icon.png'),
        //           label: '여행일정',
        //           activeIcon: Image.asset(
        //               '/bottom_nav_bar_icons/map_active_icon.png')),
        //       BottomNavigationBarItem(
        //         icon: Image.asset('/bottom_nav_bar_icons/tool_icon.png'),
        //         label: '여행도구',
        //         activeIcon: Image.asset(
        //             '/bottom_nav_bar_icons/tool_active_icon.png'),
        //       ),
        //     ]),
      ),
    );
  }

  Widget _buildBottomNavigationItems(
      String name, String assetName, int selectedIndex) {
    return Flexible(
      child: IconButton(
          padding: EdgeInsets.zero,
          // style: IconButton.styleFrom(splashFactory: NoSplash.splashFactory), // 파동효과 제거
          splashColor: Colors.transparent, // 파동효과 제거
          highlightColor: Colors.transparent, // 눌렀을 때 효과 제거
          hoverColor: Colors.transparent, // 호버 효과 제거
          onPressed: () {
            _onItemTapped(selectedIndex);
          },
          icon: SizedBox(
            height: 40,
            child: Column(
              children: [
                _selectedIndex == selectedIndex
                    ? Image.asset(
                        '/bottom_nav_bar_icons/${assetName}_active_icon.png',
                        height: 20,
                        width: 20,
                      )
                    : Image.asset(
                        '/bottom_nav_bar_icons/${assetName}_icon.png',
                        height: 20,
                        width: 20,
                      ),
                Text(
                  name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Color(0xFF94C5B9),
                    fontSize: 12,
                    fontFamily: 'Ownglyph okticon',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                )
              ],
            ),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _screens,
      ),
      bottomNavigationBar: _buildBottomNavigationBar(context),
    );
  }
}
