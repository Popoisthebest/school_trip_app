import 'package:flutter/material.dart';

class PlaceScreen extends StatelessWidget {
  const PlaceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity, // 부모 크기를 명확하게 설정
        child: Stack(
          children: [
            // Background Container
            Positioned.fill(
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xFF4D9E8A), // Greenish background color
                ),
              ),
            ),
            // 하단 보더만 적용, 텍스트 침범 방지
            Positioned(
              left: 0,
              top: 140, // 텍스트와 겹치지 않도록 더 아래로 조정
              right: 0,
              child: Container(
                height: 1, // 보더 두께 설정
                color: const Color(0xFFE0E0E0), // 하단 보더 색상
              ),
            ),
            // Title Text (도쿄 여행)
            Positioned(
              left: 29,
              top: 74,
              child: const Text(
                '도쿄 여행',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24, // 텍스트 크기 증가
                  fontFamily: 'Ownglyph okticon',
                  fontWeight: FontWeight.w700,
                  height: 1.2,
                ),
              ),
            ),
            // Date Text (2024.10.22 ~ 10.25)
            Positioned(
              left: 29,
              top: 105, // 여백을 더 늘려 보더와 텍스트 간격 유지
              child: Text(
                '2024.10.22 ~ 10.25',
                style: TextStyle(
                  color: Colors.white.withOpacity(0.75),
                  fontSize: 16, // 텍스트 크기 증가
                  fontFamily: 'Ownglyph okticon',
                  fontWeight: FontWeight.w400,
                  height: 1.5,
                ),
              ),
            ),
            // Category Buttons (음식점, 공중화장실, 카페, 응급진료, 편의점, 은행, 가볼만한곳)
            Positioned(
              left: 10,
              top: 160, // 버튼들을 더 아래로 조정해 텍스트와 겹치지 않게
              right: 10,
              child: SizedBox(
                height: 40, // 박스 높이 증가
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _buildCategoryButton('음식점'),
                    const SizedBox(width: 10),
                    _buildCategoryButton('공중화장실'),
                    const SizedBox(width: 10),
                    _buildCategoryButton('카페'),
                    const SizedBox(width: 10),
                    _buildCategoryButton('응급진료'),
                    const SizedBox(width: 10),
                    _buildCategoryButton('편의점'),
                    const SizedBox(width: 10),
                    _buildCategoryButton('은행'),
                    const SizedBox(width: 10),
                    _buildCategoryButton('가볼만한곳'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Helper function to build category buttons
  Widget _buildCategoryButton(String label) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 14), // 패딩 조정으로 텍스트와 박스의 크기 맞춤
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
      ),
      child: Center(
        child: Text(
          label,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 13, // 텍스트 크기 증가
            fontWeight: FontWeight.w400,
            fontFamily: 'Ownglyph okticon',
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: PlaceScreen(),
    debugShowCheckedModeBanner: false,
  ));
}
