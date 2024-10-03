import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var screenWidth = screenSize.width;

    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/logo/mydashintrip_LOGO.png',
              width: 100, height: 100),
          const Text(
            'MyDaeShinTrip',
            style: TextStyle(
              fontFamily: "Ownglyph okticon", // 미정
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
