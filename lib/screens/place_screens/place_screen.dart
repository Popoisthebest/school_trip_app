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
            // Map Placeholder
            Positioned(
              left: 0,
              top: 220,
              right: 0,
              bottom: 0, // 카드가 올라갈 수 있는 공간을 확보
              child: Container(
                alignment: Alignment.center,
                color: Colors.grey[300], // 지도 자리 표시
                child: const Text('Map'), // 지도가 위치할 자리
              ),
            ),
            // Horizontally scrollable detailed info cards
            Positioned(
              left: 0,
              bottom: 0,
              right: 0,
              height: 100, // 상세 정보 카드 높이 설정
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5, // 예제 데이터 개수
                itemBuilder: (context, index) {
                  return _buildDetailCard();
                },
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
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 14),
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
            fontSize: 13,
            fontWeight: FontWeight.w400,
            fontFamily: 'Ownglyph okticon',
          ),
        ),
      ),
    );
  }

  // Helper function to build detail cards
  Widget _buildDetailCard() {
    return Container(
      width: 200, // 카드 너비 설정
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Color(0xFF4D9E8A), width: 2),
      ),
      child: Column(
        children: [
          Expanded(
            child: Image.network(
              "https://via.placeholder.com/200x50",
              fit: BoxFit.cover,
            ),
          ),
          Text(
            'Place Name',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Short description',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 12,
            ),
          ),
        ],
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
