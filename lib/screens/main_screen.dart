import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF4D9E8A),
      body: Column(
        children: [
          Row(
            children: [
              Image.asset('assets/logo/dashin_LOGO.png', width: 36, height: 36),
              const Text(
                'MyDaeShinTrip',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Ownglyph okticon',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
