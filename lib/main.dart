import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:school_trip_app/screens/google_trip_map_screen.dart';
import 'package:school_trip_app/screens/main_screen.dart';
import 'package:school_trip_app/screens/splash_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const SchoolTripApp());
}

class SchoolTripApp extends StatefulWidget {
  const SchoolTripApp({super.key});

  @override
  State<SchoolTripApp> createState() => _SchoolTripAppState();
}

class _SchoolTripAppState extends State<SchoolTripApp> {
  bool isToggle = true;

  void onTapped() {
    setState(() {
      isToggle = !isToggle;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF4D9E8A),
          flexibleSpace: SafeArea(
            child: Row(
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
                          fontFamily: 'CookieRunOTF',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      )
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
                      isToggle
                          ? IconButton(
                              padding: EdgeInsets.zero,
                              constraints: const BoxConstraints(),
                              highlightColor: Colors.transparent,
                              onPressed: () {
                                onTapped();
                              },
                              icon: Image.asset(
                                  'assets/app_bar_icons/toggle_on_icon.png'),
                            )
                          : IconButton(
                              padding: EdgeInsets.zero,
                              constraints: const BoxConstraints(),
                              highlightColor: Colors.transparent,
                              onPressed: () {
                                onTapped();
                              },
                              icon: Image.asset(
                                  'assets/app_bar_icons/toggle_off_icon.png'),
                            )
                    ],
                  ),
                ),
              ],
            ),
          ),
          // leading: Image.asset('/logo/dashin_LOGO.png'),
          // title: const Text(
          //   'MyDaeShinTrip',
          //   textAlign: TextAlign.right,
          //   style: TextStyle(
          //     color: Colors.white,
          //     fontSize: 20,
          //     fontFamily: 'CookieRunOTF',
          //     fontWeight: FontWeight.w400,
          //     height: 0,
          //   ),
          // ),
        ),
        body: const GoogleTripMapScreen(),
      ),
    );
  }
}
