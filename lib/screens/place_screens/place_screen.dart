import 'package:flutter/material.dart';

class PlaceDetail {
  final String name;
  final String description;
  final double rating;
  final String navigationText;

  PlaceDetail({
    required this.name,
    required this.description,
    required this.rating,
    required this.navigationText,
  });
}

class PlaceScreen extends StatelessWidget {
  const PlaceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width; // 화면의 전체 너비를 계산합니다.
    final cardWidth = screenWidth * 0.9; // 카드의 너비를 화면 너비의 90%로 설정합니다.
    final List<PlaceDetail> placeDetails = [
      PlaceDetail(
        name: '디즈니랜드',
        description: '디즈니랜드 도쿄는 일본 최초의 디즈니 테마파크로, 다양한 디즈니 캐릭터와 놀이기구, 공연을 즐길 수 있는 인기 관광지입니다.',
        rating: 5.0,
        navigationText: '길안내',
      ),
      PlaceDetail(
        name: '디즈니랜드',
        description: '디즈니랜드 도쿄는 일본 최초의 디즈니 테마파크로, 다양한 디즈니 캐릭터와 놀이기구, 공연을 즐길 수 있는 인기 관광지입니다.',
        rating: 5.0,
        navigationText: '길안내',
      ),
      // 추가 장소 정보를 여기에 추가할 수 있습니다.
    ];

    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            Positioned.fill(
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xFF4D9E8A),
                ),
              ),
            ),
            Positioned(
              left: 0,
              top: 140,
              right: 0,
              child: Container(
                height: 1,
                color: const Color(0xFFE0E0E0),
              ),
            ),
            Positioned(
              left: 29,
              top: 74,
              child: const Text(
                '도쿄 여행',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontFamily: 'Ownglyph okticon',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Positioned(
              left: 29,
              top: 105,
              child: Text(
                '2024.10.22 ~ 10.25',
                style: TextStyle(
                  color: Colors.white.withOpacity(0.75),
                  fontSize: 16,
                  fontFamily: 'Ownglyph okticon',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Positioned(
              left: 10,
              top: 160,
              right: 10,
              child: SizedBox(
                height: 40,
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
            Positioned(
              left: 0,
              top: 220,
              right: 0,
              bottom: 0,
              child: Container(
                alignment: Alignment.center,
                color: Colors.grey[300],
                child: const Text('Map Placeholder'),
              ),
            ),
            Positioned(
              left: 0,
              bottom: 0,
              right: 0,
              height: 180,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: placeDetails.length,
                padding: EdgeInsets.symmetric(horizontal: (screenWidth - cardWidth) / 2),
                itemBuilder: (context, index) {
                  return Container(
                    width: cardWidth,
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Color(0xFF4D9E8A), width: 2),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            placeDetails[index].name,
                            style: const TextStyle(
                              fontSize: 20,
                              fontFamily: 'Ownglyph okticon',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            placeDetails[index].description,
                            style: const TextStyle(
                              fontFamily: 'Ownglyph okticon',
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

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
}

void main() {
  runApp(const MaterialApp(
    home: PlaceScreen(),
    debugShowCheckedModeBanner: false,
  ));
}
