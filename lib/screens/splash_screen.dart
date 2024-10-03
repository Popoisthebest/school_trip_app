import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:school_trip_app/screens/main_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();

    // 시스템 UI를 immersive 모드로 설정하여 상태바와 내비게이션 바를 숨김
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    // 2초 후에 MainScreen으로 화면 전환
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              const MainScreen(),
          // 화면 전환 시 FadeTransition을 사용하여 부드러운 페이드 애니메이션 효과를 적용
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation, // 애니메이션의 투명도 조절
              child: child,
            );
          },
        ),
      );
    });
  }

  @override
  void dispose() {
    // 화면이 사라질 때 시스템 UI 모드를 원래 상태로 되돌림 (상태바와 내비게이션 바 표시)
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var screenWidth = screenSize.width;

    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // 로고 이미지 표시
          Image.asset('assets/logo/mydashintrip_LOGO.png',
              width: 100, height: 100),
          const Text(
            'MyDaeShinTrip',
            style: TextStyle(
              fontFamily: "Ownglyph okticon", // 폰트 설정(미정)
              fontSize: 24,
              fontWeight: FontWeight.w400,
              color: Color(0xff000000),
              height: 31 / 24,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      )),
    );
  }
}
