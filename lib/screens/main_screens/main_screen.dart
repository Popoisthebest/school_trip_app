import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:school_trip_app/screens/emergency_screens/emergency_screen.dart';
import 'package:school_trip_app/screens/travel_screens/akihabara_detail_screen.dart';
import 'package:school_trip_app/screens/travel_screens/asakusa_detail_screen.dart';
import 'package:school_trip_app/screens/travel_screens/disney_detail_screen.dart';
import 'package:school_trip_app/screens/travel_screens/odaiba_detail_screen.dart';
import 'package:url_launcher/url_launcher_string.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  String getDDayText() {
    final DateTime today = DateTime.now();
    final DateTime tripStartDate = DateTime(today.year, 10, 22);

    if (today.isBefore(tripStartDate)) {
      final int daysLeft = tripStartDate.difference(today).inDays;
      return 'D-$daysLeft';
    } else {
      return 'D-DAY!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFDBECE8), // 배경 색상 설정
      body: Column(
        children: [
          Container(
            color: const Color(0xff4D9E8A),
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
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
                  const SizedBox(height: 3),
                  Text(
                    "대전대신고 52회, 수학여행 ${getDDayText()}",
                    style: const TextStyle(
                      fontFamily: "Ownglyph okticon",
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      height: 26 / 20,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(height: 5),
                  Container(
                    width: 116,
                    height: 22,
                    decoration: ShapeDecoration(
                      color: const Color(0x4C004B3D),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        '2024.10.22 ~ 10.25',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontFamily: 'Ownglyph okticon',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                ],
              ),
            ),
          ),

          // 스크롤 가능 영역
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // 네 개의 박스가 포함된 GridView
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: GridView.count(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      crossAxisCount: 2,
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 5,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (builder) =>
                                      const OdaibaDetailScreen()),
                            );
                          },
                          child: const PlaceBox(
                            title: "오다이바",
                            description: "바다와 어우러진 야경이 아름다운 필수 관광지!",
                            image: "assets/main_screen_images/odiba.png",
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (builder) =>
                                    const AkihabaraDetailScreen(),
                              ),
                            );
                          },
                          child: const PlaceBox(
                            title: "아키하바라",
                            description: "게임과 재패니메이션 메니아들의 성지!",
                            image: "assets/main_screen_images/akihabara.png",
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (builder) =>
                                    const DisneyDetailScreen(),
                              ),
                            );
                          },
                          child: const PlaceBox(
                            title: "디즈니랜드",
                            description: "잊지 못할 추억을 선사하는 도쿄 디즈니랜드!",
                            image: "assets/main_screen_images/disneyland.png",
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (builder) =>
                                    const AsakusaDetailScreen(),
                              ),
                            );
                          },
                          child: const PlaceBox(
                            title: "아사쿠사",
                            description: "일본의 전통이 담긴, 전통이 살아숨쉬는 곳!",
                            image: "assets/main_screen_images/asakusa.png",
                          ),
                        ),
                      ],
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
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (builder) => const EmergencyScreen(),
                              ),
                            );
                          },
                          child: const InfoTemplate(
                            title: '긴급사항',
                            icon: 'assets/icons/warning.svg',
                            details: ['수학여행관련 긴급사항을 확인해보세요!'],
                          ),
                        ),
                        const InfoTemplate(
                          title: '안전수칙',
                          icon: 'assets/icons/security.svg',
                          details: ['수학여행관련 안전수칙을 알아보세요!'],
                        ),
                        const InfoTemplate(
                          title: '유의사항',
                          icon: 'assets/icons/info.svg',
                          details: ['수학여행관련 유의사항을 알아보세요!'],
                        ),
                        const InfoTemplate(
                          title: '체크리스트',
                          icon: 'assets/icons/hotel.svg',
                          details: ['수학여행갈때 꼭 가져가야 하는것들을 확인해 보세요!'],
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
                        const TopSection(title: '세철T가 뽑은 TOP3'),
                        const SizedBox(height: 16),

                        // Top3Card 항목들
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (builder) =>
                                    const AkihabaraDetailScreen(),
                              ),
                            );
                          },
                          child: const Top3Card(
                            title: "다양한 애니메이션 관련 제품을 만날 수 있는 아키하바라!",
                            description:
                                "우리 학생들이 눈 돌아갈 만한 요소가 많이 있습니다 주머니를 많이 털리지 않을까 걱정도 되는 장소입니다~",
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
                        ),
                        const SizedBox(height: 16),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (builder) =>
                                    const DisneyDetailScreen(),
                              ),
                            );
                          },
                          child: const Top3Card(
                            title: "월트 디즈니가 창조한 동화 속 세상 디즈니랜드!",
                            description:
                                "노을지는 도쿄의 밤은 정말로 아름답습니다! 한 번 구경해보시는걸 추천해요!",
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
                        ),
                        const SizedBox(height: 16),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (builder) =>
                                    const AkihabaraDetailScreen(),
                              ),
                            );
                          },
                          child: const Top3Card(
                            title: "일본 전통 문화가 살아 숨쉬는 아사쿠사 센소시!",
                            description:
                                "노을지는 도쿄의 밤은 정말로 아름답습니다! 한 번 구경해보시는걸 추천해요!",
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

class TopSection extends StatelessWidget {
  final String title;

  const TopSection({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: const Color(0xFF71B1A1),
          borderRadius: BorderRadius.circular(100),
          border: Border.all(
            color: Colors.black,
            width: 1,
          )),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 9.0, bottom: 5),
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontFamily: 'Ownglyph okticon',
              fontWeight: FontWeight.w700,
              height: 0,
            ),
          ),
        ),
      ),
    );
  }
}

// 장소 박스 위젯
class PlaceBox extends StatelessWidget {
  final String title;
  final String description;
  final String image;

  const PlaceBox(
      {super.key,
      required this.title,
      required this.description,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(
          image: AssetImage(image),
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
                fontSize: 20,
                fontWeight: FontWeight.w700,
                fontFamily: "Ownglyph okticon",
              ),
            ),
            // 설명 텍스트
            Text(
              description,
              style: const TextStyle(
                color: Color.fromRGBO(255, 255, 255, 0.75),
                fontSize: 14,
                fontWeight: FontWeight.w700,
                fontFamily: "Ownglyph okticon",
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// 긴급 연락처 위젯
class EmergencyContacts extends StatelessWidget {
  const EmergencyContacts({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xFF4D9E8A),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      top: 10.0, left: 13, right: 17, bottom: 9),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: const Color(0xFFFF5F5F),
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
                          const SizedBox(width: 8),
                          const Text(
                            "긴급연락망",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Ownglyph okticon',
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
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
                                color: Color(0xFFDBECE8),
                              ),
                            ),
                            const SizedBox(width: 5),
                            const Icon(Icons.arrow_forward,
                                color: Color(0xFFDBECE8)),
                            const SizedBox(width: 5),
                            Image.asset(
                              'assets/main_screen_images/kakaotalk.png',
                              height: 30,
                              width: 30,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    const SizedBox(width: 13),
                    SvgPicture.asset('assets/main_screen_images/Phone.svg'),
                    const SizedBox(width: 10),
                    const Text(
                      "오세철 선생님(1학년 부장)",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Ownglyph okticon',
                        color: Color(0xFFDBECE8),
                      ),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () async {
                        const url = "tel:01063127813";
                        if (await canLaunchUrlString(url)) {
                          await launchUrlString(url);
                        } else {
                          print("전화 걸기 URL을 열 수 없습니다: $url");
                        }
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 4.0, horizontal: 7.0),
                        decoration: BoxDecoration(
                          color: const Color(0xFFFF5F5F),
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
                const SizedBox(height: 7),
                Row(
                  children: [
                    const SizedBox(width: 12),
                    SvgPicture.asset('assets/main_screen_images/Phone.svg'),
                    const SizedBox(width: 10),
                    const Text(
                      "문가람 선생님(1학년 총무)",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Ownglyph okticon',
                        color: Color(0xFFDBECE8),
                      ),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () async {
                        const url = "tel:01038336156";
                        if (await canLaunchUrlString(url)) {
                          await launchUrlString(url);
                        } else {
                          print("전화 걸기 URL을 열 수 없습니다: $url");
                        }
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 4.0, horizontal: 7.0),
                        decoration: BoxDecoration(
                          color: const Color(0xFFFF5F5F),
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
          GestureDetector(
            onTap: () {
              // 더보기 기능 (추후 구현)
            },
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              decoration: const BoxDecoration(
                color: Color(0xFF71B1A1),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
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
                  width: 20,
                  height: 20,
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
            GestureDetector(
              onTap: () {
                // 자세히 버튼 기능 추가 예정
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "자세히",
                    style: TextStyle(
                      color: Color(0xFFDBECE8),
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
                  ),
                ],
              ),
            ),
          ],
        ),
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
        color: const Color(0xFF4D9E8A),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(12), topLeft: Radius.circular(12)),
            child: Image.asset(
              image,
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width,
              height: 355,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Ownglyph okticon',
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  description,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Ownglyph okticon',
                    color: Color(0xFFDBECE8),
                  ),
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    Text(
                      location,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Ownglyph okticon',
                        color: Color(0xFFDBECE8),
                      ),
                    ),
                    const SizedBox(width: 5),
                    Row(
                      children: List.generate(5, (index) {
                        if (index < rating) {
                          return SvgPicture.asset(
                            'assets/icons/filled_star.svg',
                            width: 20,
                            height: 20,
                          );
                        } else {
                          return SvgPicture.asset(
                            'assets/icons/empty_star.svg',
                            width: 20,
                            height: 20,
                          );
                        }
                      }),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.symmetric(
                      vertical: 12.0, horizontal: 6.0),
                  decoration: BoxDecoration(
                    color: const Color(0xFF557C6F),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    tags.join(' '),
                    style: const TextStyle(
                      fontSize: 16,
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
