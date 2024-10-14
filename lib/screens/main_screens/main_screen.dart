import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  // 장소 정보를 담은 리스트
  final List<Map<String, String>> places = [
    {
      "title": "오다이바",
      "description": "바다와 어우러진 야경이\n아름다운 필수 관광지!",
      "image": "assets/main_screen_images/odiba.png" // 이미지 경로는 프로젝트 내에 맞게 설정
    },
    {
      "title": "아키하바라",
      "description": "게임과 재패니메이션\n메니아들의 성지!",
      "image": "assets/main_screen_images/akihabara.png"
    },
    {
      "title": "디즈니랜드",
      "description": "잊지 못할 추억을 선사하는\n도쿄 디즈니랜드!",
      "image": "assets/main_screen_images/disneyland.png"
    },
    {
      "title": "아사쿠사",
      "description": "일본의 전통이 담긴,\n전통이 살아숨쉬는 곳!",
      "image": "assets/main_screen_images/asakusa.png"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFDBECE8), // 배경 색상 설정
      body: Column(
        children: [
          // 상단 NavBar
          Container(
            color: const Color(0xff4D9E8A),
            width: double.infinity,
            child: const Padding(
              padding: EdgeInsets.only(
                left: 20.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "도쿄여행",
                    style: TextStyle(
                      fontFamily: "Ownglyph okticon",
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      height: 18 / 14,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(height: 3),
                  Text(
                    "대전대신고 52회, 수학여행 D-DAY!",
                    style: TextStyle(
                      fontFamily: "Ownglyph okticon",
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      height: 26 / 20,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(height: 5),
                  SizedBox(
                    width: 116,
                    height: 22,
                    child: DecoratedBox(
                      decoration: ShapeDecoration(
                        color: Color(0x4C004B3D),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          '2024.10.22 ~ 10.25',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: 'Ownglyph okticon',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 14),
                ],
              ),
            ),
          ),

          // 스크롤 가능 영역
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // 검색창은 생략

                  // 네 개의 박스가 포함된 GridView
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: GridView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true, // SingleChildScrollView와 함께 사용 시 필수
                      physics:
                          const NeverScrollableScrollPhysics(), // ScrollView에서 스크롤 중복 방지
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, // 한 줄에 2개의 열
                        mainAxisSpacing: 5,
                        crossAxisSpacing: 5,
                        childAspectRatio: 1.0, // 박스의 비율 설정
                      ),
                      itemCount: places.length,
                      itemBuilder: (context, index) {
                        return PlaceBox(
                          title: places[index]['title']!,
                          description: places[index]['description']!,
                          image: places[index]['image']!,
                        );
                      },
                    ),
                  ),

                  // 긴급 연락처 섹션 추가
                  const EmergencyContacts(),

                  // 4개 템플릿 추가 (2 x 2 Grid) + 간격 추가
                  const SizedBox(height: 15), // 간격 추가
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: GridView.count(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      crossAxisCount: 2,
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 5,
                      childAspectRatio: 1.4,
                      physics: const NeverScrollableScrollPhysics(),
                      children: const [
                        InfoTemplate(
                          title: '긴급사항',
                          icon: 'assets/icons/warning.svg',
                          details: ['수학여행관련 긴급사항을 확인해보세요!'],
                        ),
                        InfoTemplate(
                          title: '안전수칙',
                          icon: 'assets/icons/security.svg',
                          details: ['수학여행관련 안전수칙을 알아보세요!'],
                        ),
                        InfoTemplate(
                          title: '유의사항',
                          icon: 'assets/icons/info.svg',
                          details: ['수학여행관련 유의사항을 알아보세요!'],
                        ),
                        InfoTemplate(
                          title: '숙소',
                          icon: 'assets/icons/hotel.svg',
                          details: ['반별로 배정된 룸메이트와 비상대피로를 확인해보세요!'],
                        ),
                      ],
                    ),
                  ),

                  // 세철T가 뽑은 TOP3 섹션 추가
                  const SizedBox(height: 20), // 간격 추가
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: const Color(0xFF71B1A1),
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(
                                color: Colors.black,
                                width: 1,
                              )),
                          child: const Center(
                            child: Padding(
                              padding: EdgeInsets.only(top: 9.0, bottom: 5),
                              child: Text(
                                '세철T가 뽑은 TOP3',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontFamily: 'Ownglyph okticon',
                                  fontWeight: FontWeight.w700,
                                  height: 0,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),

                        // Top3Card 항목들
                        const Top3Card(
                          title: "다양한 애니메이션 관련 제품을\n만날 수 있는 아키하바라!",
                          description:
                              "우리 학생들이 눈 돌아갈 만한 요소가 많이 있습니다\n주머니를 많이 털리지 않을까 걱정도 되는 장소입니다~",
                          location: "아키하바라 / 도쿄 /",
                          rating: 5, // 별 5개
                          tags: [
                            "#많이 찾는 장소",
                            "#도쿄 아키하바라",
                            "#Akihabara",
                            "#피규어쇼핑",
                            "#오타쿠성지"
                          ],
                          image: 'assets/main_screen_images/akihabara.png',
                        ),
                        const SizedBox(height: 16),
                        const Top3Card(
                          title: "월트 디즈니가 창조한\n동화 속 세상 디즈니랜드!",
                          description:
                              "노을지는 도쿄의 밤은 정말로 아름답습니다!\n한 번 구경해보시는걸 추천해요!",
                          location: "디즈니랜드 / 도쿄 /",
                          rating: 4, // 별 4개
                          tags: [
                            "#디즈니",
                            "#도쿄 디즈니랜드",
                            "#TokyoDisneyland",
                            "#디즈니 캐릭터",
                            "#대규모 테마파크"
                          ],
                          image: 'assets/main_screen_images/disneyland.png',
                        ),
                        const SizedBox(height: 16),
                        const Top3Card(
                          title: "일본 전통 문화가 살아 숨쉬는\n아사쿠사 센소시!",
                          description:
                              "노을지는 도쿄의 밤은 정말로 아름답습니다!\n한 번 구경해보시는걸 추천해요!",
                          location: "아사쿠사 센소시 / 도쿄 /",
                          rating: 4, // 별 4개
                          tags: [
                            "#많이 찾는 장소",
                            "#아사쿠사",
                            "#Asakusa",
                            "#가장 오래된 사찰",
                            "#일본전통사찰"
                          ],
                          image: 'assets/main_screen_images/asakusa.png',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Top3Card 템플릿 클래스
class Top3Card extends StatelessWidget {
  final String title;
  final String description;
  final String location;
  final int rating; // 별점
  final List<String> tags;
  final String image;

  const Top3Card({
    super.key,
    required this.title,
    required this.description,
    required this.location,
    required this.rating,
    required this.tags,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color(0xFF4D9E8A), // 카드 배경색
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 상단 이미지
          ClipRRect(
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(12),
                topLeft: Radius.circular(12)), // 둥근 테두리 적용
            child: Image.asset(
              image,
              fit: BoxFit.cover, // 이미지를 컨테이너 크기에 맞게 자르기
              width: MediaQuery.of(context).size.width, // 화면 너비에 맞춤
              height: 355,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 제목
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 24, // 텍스트 크기 더 크게 설정
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Ownglyph okticon',
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 10),

                // 설명
                Text(
                  description,
                  style: const TextStyle(
                    fontSize: 18, // 설명 텍스트 크기 증가
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Ownglyph okticon',
                    color: Color(0xFFDBECE8),
                  ),
                ),
                const SizedBox(height: 5),

                // 위치 정보 및 별점
                Row(
                  children: [
                    Text(
                      location,
                      style: const TextStyle(
                        fontSize: 16, // 위치 텍스트 크기 증가
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Ownglyph okticon',
                        color: Color(0xFFDBECE8),
                      ),
                    ),
                    const SizedBox(width: 5),

                    // 별 아이콘 표시 로직
                    Row(
                      children: List.generate(5, (index) {
                        if (index < rating) {
                          return SvgPicture.asset(
                            'assets/icons/filled_star.svg', // 꽉 찬 별 SVG 파일 경로
                            width: 20,
                            height: 20,
                          );
                        } else {
                          return SvgPicture.asset(
                            'assets/icons/empty_star.svg', // 빈 별 SVG 파일 경로
                            width: 20,
                            height: 20,
                          );
                        }
                      }),
                    ),
                  ],
                ),
                const SizedBox(height: 5),

                // 해시태그 (하나의 큰 박스로 포함)
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.symmetric(
                      vertical: 12.0, horizontal: 6.0),
                  decoration: BoxDecoration(
                    color: const Color(0xFF557C6F), // 해시태그 박스 배경색
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    tags.join(' '), // 해시태그 리스트를 하나의 텍스트로 결합
                    style: const TextStyle(
                      fontSize: 16, // 해시태그 텍스트 크기 증가
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Ownglyph okticon',
                      color: Colors.white,
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
}

// EmergencyContacts와 PlaceBox, InfoTemplate 등 나머지 위젯들은 동일합니다.

// 장소 박스 위젯
class PlaceBox extends StatelessWidget {
  final String title;
  final String description;
  final String image;

  const PlaceBox({
    super.key,
    required this.title,
    required this.description,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // 추후 기능 추가 시 사용할 onTap 이벤트
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(
            image: AssetImage(image), // 박스 안에 이미지 추가
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.black.withOpacity(0.5),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20, // 요청하신 대로 설정
                  fontWeight: FontWeight.w700,
                  fontFamily: "Ownglyph okticon",
                ),
              ),
              // 설명 텍스트
              Text(
                description,
                style: const TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 0.75),
                  fontSize: 14, // 요청하신 대로 설정
                  fontWeight: FontWeight.w700,
                  fontFamily: "Ownglyph okticon",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// 템플릿용 리스트 위젯
class InfoTemplate extends StatelessWidget {
  final String title;
  final String icon;
  final List<String> details;

  const InfoTemplate({
    super.key,
    required this.title,
    required this.icon,
    required this.details,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF71B1A1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding:
            const EdgeInsets.only(top: 14, bottom: 11, left: 13.0, right: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  icon,
                  width: 20, // 너비 설정
                  height: 20, // 높이 설정
                ),
                const SizedBox(width: 8),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Ownglyph okticon',
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 4),

            // 세부 내용 리스트

            for (var detail in details)
              Text(
                detail,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Ownglyph okticon',
                  fontWeight: FontWeight.w700,
                ),
              ),
            const Spacer(),
            // 자세히 버튼
            GestureDetector(
              onTap: () {
                // 자세히 버튼 기능 추가 예정
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.end, // 오른쪽 정렬
                children: [
                  Text(
                    "자세히",
                    style: TextStyle(
                      color: Color(0xFFDBECE8), // 글자 색상 변경
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Ownglyph okticon',
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(width: 2),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Color(0xFFDBECE8),
                    size: 16,
                  ),
                  SizedBox(
                    width: 7,
                  ), // 아이콘 색상 변경
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// 여행 전 체크리스트 위젯

class ChecklistSection extends StatefulWidget {
  const ChecklistSection({super.key});

  @override
  _ChecklistSectionState createState() => _ChecklistSectionState();
}

class _ChecklistSectionState extends State<ChecklistSection> {
  // 체크박스 상태를 관리할 리스트
  final Map<String, bool> checklistItems = {
    '여권': false,
    '신용카드': false,
    '충전기': false,
    '선글라스': false,
    '여벌 옷': false,
    '캐리어': false,
    '현지화폐': false,
    '모자': false,
    '필기도구': false,
    '세면도구': false,
  };

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF71B1A1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 17, left: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  'assets/icons/checklist.svg',
                  width: 20,
                  height: 20,
                ),
                const SizedBox(width: 10),
                const Text(
                  '여행 전 체크리스트',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Ownglyph okticon',
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),

            // 체크리스트 아이템들 (세로로 나열, 컬럼 구조)
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 첫 번째 열
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: checklistItems.keys
                        .take(checklistItems.length ~/ 2)
                        .map((String key) {
                      return Row(
                        children: [
                          SizedBox(
                            width: 10,
                            height: 26,
                            child: Checkbox(
                              value: checklistItems[key],
                              onChanged: (bool? value) {
                                setState(() {
                                  checklistItems[key] = value ?? false;
                                });
                              },
                              activeColor: Colors.white,
                              checkColor: const Color(0xFF71B1A1), // 체크 표시 색상
                              side: const BorderSide(
                                color: Color(0xFFDBECE8), // 보더 색상
                              ),
                            ),
                          ),
                          const SizedBox(width: 20),
                          LayoutBuilder(
                            builder: (context, constraints) {
                              return Container(
                                alignment: Alignment.center, // 텍스트 중앙 정렬
                                child: Text(
                                  key,
                                  style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Ownglyph okticon',
                                    color: Color(0xFFDBECE8), // 글자 색상
                                  ),
                                ),
                              );
                            },
                          )
                        ],
                      );
                    }).toList(),
                  ),
                ),
                const SizedBox(width: 10),

                // const SizedBox(width: 10), // 열 간격
                // 두 번째 열
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: checklistItems.keys
                        .skip(checklistItems.length ~/ 2)
                        .map((String key) {
                      return Row(
                        children: [
                          SizedBox(
                            width: 1,
                            height: 26,
                            child: Checkbox(
                              value: checklistItems[key],
                              onChanged: (bool? value) {
                                setState(() {
                                  checklistItems[key] = value ?? false;
                                });
                              },
                              activeColor: Colors.white,
                              checkColor: const Color(0xFF71B1A1), // 체크 표시 색상
                              side: const BorderSide(
                                color: Color(0xFFDBECE8), // 보더 색상
                              ),
                            ),
                          ),
                          const SizedBox(width: 20),
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              key,
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Ownglyph okticon',
                                color: Color(0xFFDBECE8), // 글자 색상 변경
                              ),
                            ),
                          ),
                        ],
                      );
                    }).toList(),
                  ),
                ),

                const Padding(
                  padding: EdgeInsets.only(top: 16.0), // 위쪽에 20픽셀 간격 추가
                  child: Text(
                    '여행 전,\n빠진 물건이 없는지\n확인하세요!',
                    style: TextStyle(
                      fontFamily: 'Ownglyph okticon',
                      fontSize: 12,
                      color: Colors.white, // 텍스트 색상
                    ),
                  ),
                ),

                const SizedBox(width: 15), // 간격을 추가하여 여백 확보
              ],
            ),
            const SizedBox(height: 16), // 간격을 추가하여 여백 확보

            // 자세히 버튼
            GestureDetector(
              onTap: () {
                // 자세히 기능 추가 예정
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.end, // 오른쪽 정렬
                children: [
                  Text(
                    "자세히",
                    style: TextStyle(
                      color: Color(0xFFDBECE8), // 글자 색상 변경
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Ownglyph okticon',
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(width: 4),
                  Icon(Icons.arrow_forward,
                      color: Color(0xFFDBECE8)), // 아이콘 색상 변경
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// 긴급 연락처 위젯 (이전 코드에서 유지)
class EmergencyContacts extends StatelessWidget {
  const EmergencyContacts({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: 10.0, vertical: 5), // 왼쪽, 오른쪽 여백 고정
      child: Column(
        children: [
          // 비상 연락망 박스
          Container(
            width: double.infinity, // 화면 너비에 맞게 설정, 고정된 여백 유지
            // 내부 패딩 설정
            decoration: const BoxDecoration(
              color: Color(0xFF4D9E8A), // 비상연락망 배경 색상
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ), // 위쪽 둥근 테두리만 설정
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      top: 10.0, left: 13, right: 17, bottom: 9),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // SOS + 긴급연락망
                      Row(
                        children: [
                          Container(
                            // 크기 조정
                            decoration: BoxDecoration(
                              color: const Color(0xFFFF5F5F), // SOS 빨간 배경색
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8.0, vertical: 4),
                              child: Text(
                                "SOS",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontFamily: 'Ownglyph okticon',
                                  fontWeight: FontWeight.w700,
                                  height: 0,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 8), // SOS와 긴급연락망 사이의 간격
                          const Text(
                            "긴급연락망",
                            style: TextStyle(
                              fontSize: 18, // 텍스트 크기 조정
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Ownglyph okticon',
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      // 오픈채팅방 바로가기 + 카카오톡 아이콘
                      GestureDetector(
                        onTap: () {
                          // 오픈채팅방 바로가기 기능 (추후 구현)
                        },
                        child: Row(
                          children: [
                            const Text(
                              "오픈채팅방 바로가기",
                              style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Ownglyph okticon',
                                color: Color(0xFFDBECE8), // 색상 변경
                              ),
                            ),
                            const SizedBox(width: 5),
                            const Icon(Icons.arrow_forward,
                                color: Color(0xFFDBECE8)), // 화살표
                            const SizedBox(width: 5),
                            Image.asset(
                              'assets/main_screen_images/kakaotalk.png', // 카카오톡 아이콘 경로 설정
                              height: 30,
                              width: 30,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                // 첫 번째 줄: SOS + 긴급 연락망 + 오픈채팅방 바로가기
                const SizedBox(height: 12), // 줄 간격

                // 두 번째 줄: 오세철T + 문가람T 연락처
                Row(
                  children: [
                    // 오세철T
                    const SizedBox(width: 13),
                    const Icon(Icons.phone, color: Colors.white),
                    const SizedBox(width: 10),
                    const Text(
                      "오세철 선생님(1학년 부장)",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Ownglyph okticon',
                        color: Color(0xFFDBECE8), // 선생님 이름과 전화번호 색상 변경
                      ),
                    ),
                    const Spacer(),

                    GestureDetector(
                      onTap: () {
                        // 오세철T에게 전화 기능 (추후 구현)
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 4.0, horizontal: 7.0),
                        decoration: BoxDecoration(
                          color: const Color(0xFFFF5F5F), // 빨간색 배경
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: const Text(
                          "오세철 선생님에게 전화하기",
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Ownglyph okticon',
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 6),
                  ],
                ),
                const SizedBox(height: 7), // 줄 간격

                // 문가람T 연락처
                Row(
                  children: [
                    const SizedBox(width: 12),
                    const Icon(Icons.phone, color: Colors.white),
                    const SizedBox(width: 10),
                    const Text(
                      "문가람 선생님(1학년 총무)",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Ownglyph okticon',
                        color: Color(0xFFDBECE8), // 선생님 이름과 전화번호 색상 변경
                      ),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        // 문가람T에게 전화 기능 (추후 구현)
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 4.0, horizontal: 7.0),
                        decoration: BoxDecoration(
                          color: const Color(0xFFFF5F5F), // 빨간색 배경
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: const Text(
                          "문가람 선생님에게 전화하기",
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Ownglyph okticon',
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 6),
                  ],
                ),
                const SizedBox(height: 17),
              ],
            ),
          ),

          // 더보기 버튼 (아래에 여백 없이 붙어있도록 설정)
          GestureDetector(
            onTap: () {
              // 더보기 기능 (추후 구현)
            },
            child: Container(
              width: double.infinity, // 검색창과 동일한 너비
              padding: const EdgeInsets.symmetric(vertical: 12.0), // 패딩 조정
              decoration: const BoxDecoration(
                color: Color(0xFF71B1A1), // 더보기 버튼 색상 변경
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ), // 아래쪽 둥근 테두리만 설정
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "더보기",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontFamily: 'Ownglyph okticon',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                  SizedBox(width: 4),
                  Icon(Icons.keyboard_arrow_down, color: Colors.white),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
