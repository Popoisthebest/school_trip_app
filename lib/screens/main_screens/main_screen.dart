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
      "description": "바다와 어우러진 야경이 아름다운 필수 관광지!",
      "image": "assets/main_screen_images/odiba.png" // 이미지 경로는 프로젝트 내에 맞게 설정
    },
    {
      "title": "아키하바라",
      "description": "게임과 재패니메이션 메니아들의 성지!",
      "image": "assets/main_screen_images/akihabara.png"
    },
    {
      "title": "디즈니랜드",
      "description": "잊지 못할 추억을 선사하는 도쿄 디즈니랜드!",
      "image": "assets/main_screen_images/disneyland.png"
    },
    {
      "title": "아사쿠사",
      "description": "일본의 전통이 담긴, 전통이 살아숨쉬는 곳!",
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
              padding: EdgeInsets.only(left: 20.0, top: 20, bottom: 20),
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
                  // 검색창
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextField(
                      cursorColor: Colors.black, // 커서 색상을 검은색으로 설정
                      decoration: InputDecoration(
                        hintText: '검색어를 입력해주세요.',
                        hintStyle: const TextStyle(
                          color: Colors.black, // 힌트 텍스트 색상 설정
                          fontFamily: 'Ownglyph okticon', // 요청하신 폰트 패밀리 유지
                          fontSize: 16, // 폰트 크기 설정
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 12.0, horizontal: 16.0),
                        suffixIcon: IconButton(
                          icon: const Icon(
                            Icons.search,
                            color: Color(0xFF4D9E8A), // 검색 아이콘 색상 설정
                          ),
                          onPressed: () {
                            // 검색 아이콘을 눌렀을 때 실행될 함수
                          },
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(24), // 둥근 테두리 설정
                          borderSide: const BorderSide(
                            color: Color(0xFF4D9E8A), // 테두리 색상 설정
                            width: 2.0,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.circular(24), // 비활성화 상태일 때 둥근 테두리
                          borderSide: const BorderSide(
                            color: Color(0xFF4D9E8A), // 테두리 색상 유지
                            width: 2.0,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.circular(24), // 포커스 상태일 때 둥근 테두리
                          borderSide: const BorderSide(
                            color: Color(0xFF4D9E8A), // 포커스 상태에서도 테두리 색상 유지
                            width: 2.0,
                          ),
                        ),
                        filled: true, // 배경색 채우기
                        fillColor: Colors.white, // 배경색 설정 (누를 때 색 변경 방지)
                        hoverColor: Colors.transparent, // hover 상태에서도 배경색 변경 방지
                      ),
                      style: const TextStyle(
                        fontFamily: 'Ownglyph okticon', // 입력 텍스트의 폰트 패밀리 유지
                        fontSize: 16,
                        color: Colors.black, // 입력 텍스트 색상
                      ),
                    ),
                  ),

                  // 네 개의 박스가 포함된 GridView
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: GridView.builder(
                      shrinkWrap: true, // SingleChildScrollView와 함께 사용 시 필수
                      physics:
                          const NeverScrollableScrollPhysics(), // ScrollView에서 스크롤 중복 방지
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, // 한 줄에 2개의 열
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
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
                  const SizedBox(height: 16), // 간격 추가
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: GridView.count(
                      shrinkWrap: true,
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 1.5, // 박스 비율 설정
                      physics: const NeverScrollableScrollPhysics(),
                      children: const [
                        InfoTemplate(
                          title: '긴급사항',
                          icon: Icons.warning_amber_rounded,
                          details: ['- 대한민국 영사관', '- 긴급연락망'],
                        ),
                        InfoTemplate(
                          title: '안전수칙',
                          icon: Icons.security,
                          details: ['- 호텔비상구', '- 소화기, 완강기 사용법'],
                        ),
                        InfoTemplate(
                          title: '유의사항',
                          icon: Icons.info_outline,
                          details: ['- 시간 엄수', '팀장들 연락 확인 필수'],
                        ),
                        InfoTemplate(
                          title: '숙소',
                          icon: Icons.hotel,
                          details: ['- 반별 방번호', '- 룸메이트'],
                        ),
                      ],
                    ),
                  ),

                  // 여행 전 체크리스트 섹션
                  const SizedBox(height: 16), // 간격 추가
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: ChecklistSection(),
                  ),

                  // 세철T가 뽑은 TOP3 섹션 추가
                  const SizedBox(height: 16), // 간격 추가
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          decoration: BoxDecoration(
                            color: const Color(0xFF71B1A1),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: const Center(
                            child: Text(
                              '세철T가 뽑은 TOP3',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Ownglyph okticon',
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        // 시부야 항목 (이곳에서 템플릿 형식으로 추가 가능)
                        const Top3Card(
                          title: "다양한 애니메이션 관련 제품을\n만날 수 있는 아키하바라!",
                          description:
                              "우리 학생들이 눈 돌아갈 만한 요소가 많이 있습니다\n주머니를 많이 털리지 않을까 걱정도 되는 장소입니다~",
                          location: "아키하바라 / 도쿄 /",
                          rating: 5, // 별 5개
                          tags: [
                            "#많이 찾는 장소",
                            "#도쿄 시부야",
                            "#이쁜 사진 맛집",
                            "#시부야 숨겨진 명소",
                            "#여행스타그램"
                          ],
                          image:
                              'assets/main_screen_images/akihabara.png', // 이미지 경로 예시
                        ),
                        const SizedBox(height: 16),
                        const Top3Card(
                          title: "월트 디즈니가 창조한\n동화 속 세상 디즈니랜드!",
                          description:
                              "노을지는 도쿄의 밤은 정말로 아름답습니다!\n한 번 구경해보시는걸 추천해요!",
                          location: "디즈니랜드 / 도쿄 /",
                          rating: 4, // 별 5개
                          tags: [
                            "#많이 찾는 장소",
                            "#도쿄",
                            "#뷰맛집",
                            "#숨겨진 명소",
                            "#여행스타그램"
                          ],
                          image:
                              'assets/main_screen_images/disneyland.png', // 이미지 경로 예시
                        ),
                        const SizedBox(height: 16),
                        const Top3Card(
                          title: "일본 전통 문화가 살아 숨쉬는\n아사쿠사 센소시!",
                          description:
                              "노을지는 도쿄의 밤은 정말로 아름답습니다!\n한 번 구경해보시는걸 추천해요!",
                          location: "아사쿠사 센소시 / 도쿄 /",
                          rating: 4, // 별 5개
                          tags: [
                            "#많이 찾는 장소",
                            "#도쿄",
                            "#뷰맛집",
                            "#숨겨진 명소",
                            "#여행스타그램"
                          ],
                          image:
                              'assets/main_screen_images/asakusa.png', // 이미지 경로 예시
                        ),
                        // 더 추가 가능: Top3Card 추가 가능
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
          Image.asset(image,
              fit: BoxFit.cover, height: 250, width: double.infinity),

          Padding(
            padding: const EdgeInsets.all(16.0),
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
                const SizedBox(height: 10),

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
                    const SizedBox(width: 10),
                    // 별 아이콘
                    Row(
                      children: List.generate(rating, (index) {
                        return const Icon(Icons.star,
                            color: Colors.amber, size: 20); // 별 아이콘 크기 증가
                      }),
                    ),
                  ],
                ),
                const SizedBox(height: 16),

                // 해시태그 (하나의 큰 박스로 포함)
                Container(
                  padding: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 12.0),
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
          padding: const EdgeInsets.all(16),
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
              const SizedBox(height: 8), // 제목과 설명 사이의 간격
              // 설명 텍스트
              Text(
                description,
                style: const TextStyle(
                  color: Colors.white,
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
  final IconData icon;
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
      padding: const EdgeInsets.only(top: 17, left: 13, bottom: 11, right: 12),
      decoration: BoxDecoration(
        color: const Color(0xFF71B1A1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, color: Colors.white),
              const SizedBox(width: 8),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Ownglyph okticon',
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          // 세부 내용 리스트
          for (var detail in details)
            Text(
              detail,
              style: const TextStyle(
                fontSize: 14, // 다른 폰트와 동일하게 유지
                fontWeight: FontWeight.w400,
                fontFamily: 'Ownglyph okticon',
                color: Color(0xFFDBECE8), // 글자 색상 변경
              ),
            ),
          const Spacer(), // 내용을 위로 밀어 올리고, 자세히 버튼을 아래에 배치하기 위해 Spacer 사용
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
    '연합 환전': false,
    '보조배터리': false,
    '전기충격기': false,
    '호신용품': false,
    '방검복': false,
    '소화기': false,
    '핸드폰': false,
    '애민정신': false,
    '우국지정': false,
    '선정후경': false,
    '금강산도식후경': false,
    '대정여지도': false,
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
            const Row(
              children: [
                Icon(
                  Icons.check_box,
                  color: Colors.white,
                  size: 20,
                ),
                SizedBox(width: 10),
                Text(
                  '여행 전 체크리스트',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Ownglyph okticon',
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),

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
                            width: 16,
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
                          const SizedBox(width: 5),
                          Text(
                            key,
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Ownglyph okticon',
                              color: Color(0xFFDBECE8), // 글자 색상 변경
                            ),
                          ),
                        ],
                      );
                    }).toList(),
                  ),
                ),
                const SizedBox(width: 20), // 열 간격
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
                            width: 16,
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
                          const SizedBox(width: 5),
                          Text(
                            key,
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Ownglyph okticon',
                              color: Color(0xFFDBECE8), // 글자 색상 변경
                            ),
                          ),
                        ],
                      );
                    }).toList(),
                  ),
                ),
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
      padding: const EdgeInsets.symmetric(horizontal: 16.0), // 왼쪽, 오른쪽 여백 고정
      child: Column(
        children: [
          // 비상 연락망 박스
          Container(
            width: double.infinity, // 화면 너비에 맞게 설정, 고정된 여백 유지
            padding: const EdgeInsets.all(20.0), // 내부 패딩 설정
            decoration: const BoxDecoration(
              color: Color(0xFF4D9E8A), // 비상연락망 배경 색상
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ), // 위쪽 둥근 테두리만 설정
            ),
            child: Column(
              children: [
                // 첫 번째 줄: SOS + 긴급 연락망 + 오픈채팅방 바로가기
                Row(
                  children: [
                    // SOS + 긴급연락망
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 12.0), // 크기 조정
                      decoration: BoxDecoration(
                        color: const Color(0xFFFF5F5F), // SOS 빨간 배경색
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: const Text(
                        "SOS",
                        style: TextStyle(
                          fontSize: 16, // 텍스트 크기 조정
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Ownglyph okticon',
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(width: 8), // SOS와 긴급연락망 사이의 간격
                    const Text(
                      "긴급연락망",
                      style: TextStyle(
                        fontSize: 20, // 텍스트 크기 조정
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Ownglyph okticon',
                        color: Colors.white,
                      ),
                    ),
                    const Spacer(), // 오픈채팅방 위치를 오른쪽으로 밀기 위해 Spacer 사용
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
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Ownglyph okticon',
                              color: Color(0xFFDBECE8), // 색상 변경
                            ),
                          ),
                          const SizedBox(width: 5),
                          const Icon(Icons.arrow_forward,
                              color: Color(0xFFDBECE8)), // 화살표
                          const SizedBox(width: 5),
                          SvgPicture.asset(
                            'assets/icons/kakao.svg', // 카카오톡 아이콘 경로 설정
                            height: 20,
                            width: 20,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16), // 줄 간격

                // 두 번째 줄: 오세철T + 문가람T 연락처
                Row(
                  children: [
                    // 오세철T
                    const Icon(Icons.phone, color: Colors.white),
                    const SizedBox(width: 8),
                    const Text(
                      "오세철T  010-1234-5678",
                      style: TextStyle(
                        fontSize: 16,
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
                            vertical: 8.0, horizontal: 16.0),
                        decoration: BoxDecoration(
                          color: const Color(0xFFFF5F5F), // 빨간색 배경
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: const Text(
                          "오세철T에게 전화",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Ownglyph okticon',
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8), // 줄 간격

                // 문가람T 연락처
                Row(
                  children: [
                    const Icon(Icons.phone, color: Colors.white),
                    const SizedBox(width: 8),
                    const Text(
                      "문가람T  010-1234-5678",
                      style: TextStyle(
                        fontSize: 16,
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
                            vertical: 8.0, horizontal: 16.0),
                        decoration: BoxDecoration(
                          color: const Color(0xFFFF5F5F), // 빨간색 배경
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: const Text(
                          "문가람T에게 전화",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Ownglyph okticon',
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
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
              padding: const EdgeInsets.symmetric(vertical: 15.0), // 패딩 조정
              decoration: const BoxDecoration(
                color: Color(0xFF71B1A1), // 더보기 버튼 색상 변경
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ), // 아래쪽 둥근 테두리만 설정
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "더보기",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Ownglyph okticon',
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 4),
                  Icon(Icons.arrow_forward, color: Colors.white),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
