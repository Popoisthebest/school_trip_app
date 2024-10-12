import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PlaceDetail {
  final String name;
  final String description;
  final String rating;
  final String navigationText;
  final String images;
  final int starCount; // 별 개수 정보를 추가

  PlaceDetail({
    required this.images,
    required this.name,
    required this.description,
    required this.rating,
    required this.navigationText,
    required this.starCount, // 별 개수 매개변수 추가
  });
}

class PlaceScreen extends StatelessWidget {
  const PlaceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<PlaceDetail> placeDetails = [
      PlaceDetail(
        name: '디즈니랜드',
        description:
            '디즈니랜드 도쿄는 일본 최초의 디즈니 테마파크로, 다양한 디즈니 캐릭터와 놀이기구, 공연을 즐길 수 있는 인기 관광지입니다.',
        rating: '5.0',
        navigationText: '길안내',
        images: 'assets/place_screen_images/disneyland.png',
        starCount: 5, // 별 개수 설정
      ),
      PlaceDetail(
        name: '아키하바라 전...',
        description:
            '아키하바라 전자상가는 일본 도쿄에 위치한 전자제품과 애니메이션, 만화 관련 상품의 중심지로, 전 세계 오타구 문화의 성지로 불립니다.',
        rating: '5.0',
        navigationText: '길안내',
        images: 'assets/place_screen_images/akiabara.png',
        starCount: 5, // 별 개수 설정
      ),
    ];

    return Scaffold(
      body: Column(
        children: [
          // 상단 바
          Container(
            height: 172,
            color: const Color(0xFF4D9E8A),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 68),
                const Padding(
                  padding: EdgeInsets.only(left: 29),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '도쿄 여행',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'Ownglyph okticon',
                          fontWeight: FontWeight.w700,
                          height: 1.0,
                        ),
                      ),
                      SizedBox(height: 0),
                      Text(
                        '2024.10.22 ~ 10.25',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontFamily: 'Ownglyph okticon',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 7),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 1.0,
                  color: Colors.white,
                ),
                const SizedBox(height: 14),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      const SizedBox(width: 10),
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
                const SizedBox(height: 14),
              ],
            ),
          ),

          // 중간 빨간색 박스와 하단 ListView를 분리하여 구성
          Expanded(
            child: Stack(
              children: [
                // 빨간색 박스
                Positioned.fill(
                  child: Container(
                    color: const Color.fromARGB(255, 255, 0, 0),
                    alignment: Alignment.center,
                    child: const Text(
                      'Map Placeholder',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),

                // 하단 고정된 컴포넌트 (180px 고정 높이)
                Positioned(
                  bottom: 5, // 하단에서 5px 위로 띄움
                  left: 6,
                  right: 0,
                  child: Container(
                    height: 180,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: placeDetails.length,
                      itemBuilder: (context, index) {
                        return Container(
                          width: 343,
                          margin: const EdgeInsets.only(left: 10),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 343,
                                  height: 200,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(45),
                                    border: Border.all(
                                      color: const Color(0xFF4D9E8A),
                                      width: 2,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 0,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10),
                                      topLeft: Radius.circular(10)),
                                  child: Image.asset(
                                    placeDetails[index].images,
                                    width: 120, // 이미지 넓이 설정
                                    height: 180, // 이미지 높이 설정
                                    fit: BoxFit
                                        .fill, // 이미지를 부모 컨테이너에 맞춰 왜곡 없이 채움
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 129,
                                top: 27.9,
                                child: SizedBox(
                                  width: 147,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        placeDetails[index].name,
                                        style: const TextStyle(
                                          fontFamily: 'Ownglyph okticon',
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        placeDetails[index].description,
                                        style: const TextStyle(
                                          fontFamily: 'Ownglyph okticon',
                                          fontSize: 12,
                                          color: Color(0xBF1A1A1A),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          // 별 아이콘을 개수만큼 생성
                                          ...List.generate(
                                            placeDetails[index].starCount,
                                            (starIndex) => Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 0),
                                              child: SvgPicture.asset(
                                                'assets/place_screen_images/star_icon.svg', // SVG 파일 경로
                                                width: 17, // 별 아이콘의 넓이
                                                height: 17, // 별 아이콘의 높이
                                              ),
                                            ),
                                          ),
                                          Text(
                                            '(${placeDetails[index].rating})',
                                            style: const TextStyle(
                                              fontSize: 16,
                                              color: Color(0xFF1A1A1A),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                right: 0,
                                child: Container(
                                  width: 60,
                                  height: 180,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF4D9E8A),
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(10),
                                      bottomRight: Radius.circular(10),
                                    ),
                                  ),
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center, // 세로 가운데 정렬
                                      crossAxisAlignment: CrossAxisAlignment
                                          .center, // 가로 가운데 정렬
                                      children: [
                                        Transform.rotate(
                                          angle: 135 * (3.14159 / 180),
                                          child: Icon(
                                            Icons
                                                .call_missed, // 사용하고 싶은 Flutter 아이콘
                                            size: 24, // 아이콘의 크기
                                            color: Colors.white, // 아이콘 색상
                                          ),
                                        ),
                                        Text(
                                          placeDetails[index].navigationText,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'Ownglyph okticon',
                                          ),
                                        ),
                                      ]),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
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
