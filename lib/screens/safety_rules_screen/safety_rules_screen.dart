import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:school_trip_app/widgets/travel_screens/custom_app_bar.dart';
import 'package:school_trip_app/widgets/travel_screens/disney_componets/detail_text.dart';

class SafetyRulesScreen extends StatefulWidget {
  const SafetyRulesScreen({super.key});

  @override
  State<SafetyRulesScreen> createState() => _SafetyRulesScreenState();
}

class _SafetyRulesScreenState extends State<SafetyRulesScreen> {
  //각 목차별 글로벌 키
  GlobalKey section1 = GlobalKey();

  GlobalKey section2 = GlobalKey();

  GlobalKey section3 = GlobalKey();

  GlobalKey section4 = GlobalKey();

  GlobalKey section5 = GlobalKey();
  GlobalKey section6 = GlobalKey();
  GlobalKey section7 = GlobalKey();
  GlobalKey section8 = GlobalKey();
  GlobalKey section9 = GlobalKey();
  GlobalKey section10 = GlobalKey();
  GlobalKey section11 = GlobalKey();

  void scrollToSection(GlobalKey key) {
    Scrollable.ensureVisible(key.currentContext!,
        duration: const Duration(seconds: 1), curve: Curves.easeInOut);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          buildCustomAppBar(context, '안전수칙'),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            // 팝업창
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          SvgPicture.asset(
                                              'assets/safety_rules_screen_icons/list_icon.svg'),
                                          const SizedBox(width: 8),
                                          const Text(
                                            '안전수칙',
                                            style: TextStyle(
                                              color: Color(0xFF1A1A1A),
                                              fontSize: 20,
                                              fontFamily: 'Ownglyph okticon',
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.of(context).pop();
                                            },
                                            child: SvgPicture.asset(
                                                'assets/safety_rules_screen_icons/x_icon.svg'),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  content: SizedBox(
                                    height: 320,
                                    child: SingleChildScrollView(
                                      child: Column(
                                        children: [
                                          const SizedBox(height: 15),
                                          Row(
                                            children: [
                                              Flexible(
                                                child: GestureDetector(
                                                  onTap: () {
                                                    Navigator.of(context)
                                                        .pop(); // 팝업 닫기
                                                    scrollToSection(
                                                        section1); // 위급 상황로 이동
                                                  },
                                                  child: const Text(
                                                    '1. 출발 시 주의 사항',
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 20,
                                                      fontFamily:
                                                          'Ownglyph okticon',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(height: 15),
                                          Row(
                                            children: [
                                              GestureDetector(
                                                onTap: () {
                                                  Navigator.of(context)
                                                      .pop(); // 팝업 닫기
                                                  scrollToSection(section2);
                                                },
                                                child: const Text(
                                                  '2. 승차 시 주의 사항',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20,
                                                    fontFamily:
                                                        'Ownglyph okticon',
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(height: 15),
                                          Row(
                                            children: [
                                              GestureDetector(
                                                onTap: () {
                                                  Navigator.of(context)
                                                      .pop(); // 팝업 닫기
                                                  scrollToSection(section3);
                                                },
                                                child: const Text(
                                                  '3. 숙소 투숙 시 주의 사항',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20,
                                                    fontFamily:
                                                        'Ownglyph okticon',
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                          const SizedBox(height: 15),
                                          Row(
                                            children: [
                                              GestureDetector(
                                                onTap: () {
                                                  Navigator.of(context)
                                                      .pop(); // 팝업 닫기
                                                  scrollToSection(section4);
                                                },
                                                child: const Text(
                                                  '4. 식사 시 주의 사항',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20,
                                                    fontFamily:
                                                        'Ownglyph okticon',
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                          const SizedBox(height: 15),
                                          Row(
                                            children: [
                                              GestureDetector(
                                                onTap: () {
                                                  Navigator.of(context)
                                                      .pop(); // 팝업 닫기
                                                  scrollToSection(section5);
                                                },
                                                child: const Text(
                                                  '5. 문화재 관람 시 주의 사항',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20,
                                                    fontFamily:
                                                        'Ownglyph okticon',
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                          const SizedBox(height: 15),
                                          Row(
                                            children: [
                                              GestureDetector(
                                                onTap: () {
                                                  Navigator.of(context)
                                                      .pop(); // 팝업 닫기
                                                  scrollToSection(section6);
                                                },
                                                child: const Text(
                                                  '6. 교통안전',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20,
                                                    fontFamily:
                                                        'Ownglyph okticon',
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                          const SizedBox(height: 15),
                                          Row(
                                            children: [
                                              GestureDetector(
                                                onTap: () {
                                                  Navigator.of(context)
                                                      .pop(); // 팝업 닫기
                                                  scrollToSection(section7);
                                                },
                                                child: const Text(
                                                  '7. 음식 안전',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20,
                                                    fontFamily:
                                                        'Ownglyph okticon',
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                          const SizedBox(height: 15),
                                          Row(
                                            children: [
                                              GestureDetector(
                                                onTap: () {
                                                  Navigator.of(context)
                                                      .pop(); // 팝업 닫기
                                                  scrollToSection(section8);
                                                },
                                                child: const Text(
                                                  '8. 숙소 안전',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20,
                                                    fontFamily:
                                                        'Ownglyph okticon',
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                          const SizedBox(height: 15),
                                          Row(
                                            children: [
                                              GestureDetector(
                                                onTap: () {
                                                  Navigator.of(context)
                                                      .pop(); // 팝업 닫기
                                                  scrollToSection(section9);
                                                },
                                                child: const Text(
                                                  '9. 기타 안전',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20,
                                                    fontFamily:
                                                        'Ownglyph okticon',
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                          const SizedBox(height: 15),
                                          Row(
                                            children: [
                                              GestureDetector(
                                                onTap: () {
                                                  Navigator.of(context)
                                                      .pop(); // 팝업 닫기
                                                  scrollToSection(section10);
                                                },
                                                child: const Text(
                                                  '10. 성폭력(성희롱, 성추행 등)    예방 교육',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20,
                                                    fontFamily:
                                                        'Ownglyph okticon',
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                          const SizedBox(height: 15),
                                          Row(
                                            children: [
                                              GestureDetector(
                                                onTap: () {
                                                  Navigator.of(context)
                                                      .pop(); // 팝업 닫기
                                                  scrollToSection(section11);
                                                },
                                                child: const Text(
                                                  '11. 감염병 예방수칙 및 거리두기    지침',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20,
                                                    fontFamily:
                                                        'Ownglyph okticon',
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          child: Container(
                            height: 40,
                            decoration: ShapeDecoration(
                              color: const Color(0xFFDBECE8),
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(width: 1),
                                borderRadius: BorderRadius.circular(79),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(15, 8, 0, 8),
                              child: Row(
                                children: [
                                  SvgPicture.asset(
                                      'assets/safety_rules_screen_icons/list_icon.svg'),
                                  const SizedBox(width: 9),
                                  const Text(
                                    '안전수칙 안내',
                                    style: TextStyle(
                                      color: Color(0xFF1A1A1A),
                                      fontSize: 16,
                                      fontFamily: 'Ownglyph okticon',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 22),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: Column(
                      children: [
                        Row(
                          key: section1,
                          children: const [
                            Text(
                              '출발 시 주의 사항',
                              style: TextStyle(
                                color: Color(0xFF1A1A1A),
                                fontSize: 20,
                                fontFamily: 'Ownglyph okticon',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                        const Row(
                          children: [
                            Text(
                              '  1. 집합시간을 엄수한다.',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'Ownglyph okticon',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                        const Row(
                          children: [
                            Flexible(
                              child: Text(
                                '  2. 버스 출발은 각 조(반)별 개별 출발을 원칙으로 한다.',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Ownglyph okticon',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Row(
                          children: [
                            Text(
                              '  3. 귀중품 및 여행에 불필요한 물품의 휴대를 금한다.',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'Ownglyph okticon',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                        const Row(
                          children: [
                            Flexible(
                              child: Text(
                                '  4. 복장은 단정한 사복으로 하며, 두발은 단정하고  깔끔하게 한다.',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Ownglyph okticon',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Row(
                          children: [
                            Flexible(
                              child: Text(
                                '  5. 학교 생활점퍼를 지참하여, 혼잡한 곳에서 길을 잃지  않도록 한다.',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Ownglyph okticon',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Row(
                          children: [
                            Flexible(
                              child: Text(
                                '  6. 일본 분실물 신고 (도영버스/지하철) - 03) 3816-5700',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Ownglyph okticon',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 30),
                        Row(
                          key: section2,
                          children: const [
                            Text(
                              '승차 시 주의 사항',
                              style: TextStyle(
                                color: Color(0xFF1A1A1A),
                                fontSize: 20,
                                fontFamily: 'Ownglyph okticon',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                        const Row(
                          children: [
                            Text(
                              '  1. 승차는 해당 버스에만 승차한다.',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'Ownglyph okticon',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                        const Row(
                          children: [
                            Flexible(
                              child: Text(
                                '  2. 차량 출발 전에 승차하고 임의로 버스를 바꿔 타는 일이  없도록 한다.',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Ownglyph okticon',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Row(
                          children: [
                            Text(
                              '  3. 차창 밖으로 휴지나 병을 버리지 않도록 한다.',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'Ownglyph okticon',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                        const Row(
                          children: [
                            Text(
                              '  4. 차내 질서와 청결을 항상 유지한다.',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'Ownglyph okticon',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                        const Row(
                          children: [
                            Flexible(
                              child: Text(
                                '  5. 승차 전이나 하차 후에는 꼭 집합하여 질서 있게  이동한다.',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Ownglyph okticon',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Row(
                          children: [
                            Flexible(
                              child: Text(
                                '  6. 내릴 때에는 항상 “감사합니다”라고 인사한다. ',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Ownglyph okticon',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 30),
                        Row(
                          key: section3,
                          children: const [
                            Text(
                              '숙소 투숙 시 주의 사항',
                              style: TextStyle(
                                color: Color(0xFF1A1A1A),
                                fontSize: 20,
                                fontFamily: 'Ownglyph okticon',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                        const Row(
                          children: [
                            Text(
                              '  1. 취침 및 기상 시간을 엄수한다.',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'Ownglyph okticon',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                        const Row(
                          children: [
                            Flexible(
                              child: Text(
                                '  2. 각 실 방장 및 조장은 수시로 인원을 점검하여  인솔 선생님께 보고한다.',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Ownglyph okticon',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Row(
                          children: [
                            Flexible(
                              child: Text(
                                '  3. 소지품 관리를 철저히 한다.(현금 및 귀중품은 자신이 책임진다.)',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Ownglyph okticon',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Row(
                          children: [
                            Flexible(
                              child: Text(
                                '  4. 침구류, 화장실 등 시설물을 파손 없이 깨끗하게  사용한다.',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Ownglyph okticon',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Row(
                          children: [
                            Flexible(
                              child: Text(
                                '  5. 흡연, 음주, 도박 등 불건전한 행위는 절대 금하며,  적발 시 교칙에 의거 처벌한다.',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Ownglyph okticon',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Row(
                          children: [
                            Flexible(
                              child: Text(
                                '  6. 취침 전과 기상 후에 침실 정리 정돈 및 인원 파악을  철저히 한다.',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Ownglyph okticon',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Row(
                          children: [
                            Flexible(
                              child: Text(
                                '  7. 낯선 사람의 출입을 금하고 발견 시 신속하게 신고한다. ',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Ownglyph okticon',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 30),
                        Row(
                          key: section4,
                          children: const [
                            Text(
                              '식사 시 주의 사항',
                              style: TextStyle(
                                color: Color(0xFF1A1A1A),
                                fontSize: 20,
                                fontFamily: 'Ownglyph okticon',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                        const Row(
                          children: [
                            Text(
                              '  1. 식사는 계획서에 정해진 순서대로 한다.',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'Ownglyph okticon',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                        const Row(
                          children: [
                            Flexible(
                              child: Text(
                                '  2. 식사는 자유 배식하며 음식은 자기 양만큼 덜어먹고  버리는 일이 없도록 한다.',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Ownglyph okticon',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 30),
                        Row(
                          key: section5,
                          children: const [
                            Text(
                              '문화재 관람 시 주의 사항',
                              style: TextStyle(
                                color: Color(0xFF1A1A1A),
                                fontSize: 20,
                                fontFamily: 'Ownglyph okticon',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                        const Row(
                          children: [
                            Flexible(
                              child: Text(
                                '  1. 출입이 금지된 곳 및 위험한 곳에 들어가지 말고,  특히 미끄러움에 주의한다. ',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Ownglyph okticon',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Row(
                          children: [
                            Flexible(
                              child: Text(
                                '  2. 낙석에 주의하며 벽이나 문화재에 낙서 또는  파손하지 않는다. ',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Ownglyph okticon',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Row(
                          children: [
                            Text(
                              '  3. 사진 촬영 시 위험한 곳을 피한다. ',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'Ownglyph okticon',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                        const Row(
                          children: [
                            Flexible(
                              child: Text(
                                '  4. 대전대신고등학교 학생의 긍지를 갖고 환경보호를  실천한다.',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Ownglyph okticon',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 30),
                        Row(
                          key: section6,
                          children: const [
                            Text(
                              '교통안전',
                              style: TextStyle(
                                color: Color(0xFF1A1A1A),
                                fontSize: 20,
                                fontFamily: 'Ownglyph okticon',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                        const Row(
                          children: [
                            Text(
                              '  1. 안전벨트 착용 및 운행 중 이동 금지',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'Ownglyph okticon',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                        const Row(
                          children: [
                            Flexible(
                              child: Text(
                                '  2. 차량 내 개문 가능한 창문에서 쓰레기 투기 금지,  손 내밀지 않기, 창문을 열고 장난하지 않는다.',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Ownglyph okticon',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Row(
                          children: [
                            Flexible(
                              child: Text(
                                '  3. 차량사고시 버스 창문에 걸려 있는 비상 망치를 이용하여  신속히 창문을 깨고 탈출한다.',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Ownglyph okticon',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Row(
                          children: [
                            Flexible(
                              child: Text(
                                '  4. 하차 전 휴게소 출발 시간을 확인한 후 휴게소에서는  반드시 좌우를 살피고 보행로를 이용하여  이동하며 특히 이동차량 및 후진차량에 주의한다. ',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Ownglyph okticon',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Row(
                          children: [
                            Text(
                              '  5. 버스, 비행기에서 지정된 좌석에만 앉는다. ',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'Ownglyph okticon',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 30),
                        Row(
                          key: section7,
                          children: const [
                            Text(
                              '음식 안전',
                              style: TextStyle(
                                color: Color(0xFF1A1A1A),
                                fontSize: 20,
                                fontFamily: 'Ownglyph okticon',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                        const Row(
                          children: [
                            Text(
                              '  1. 식사 전 손 씻기 등 개인위생 철저',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'Ownglyph okticon',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                        const Row(
                          children: [
                            Flexible(
                              child: Text(
                                '  2. 특정 식품 알레르기가 있는 학생은 사전에 담임 선생님 이나 안전요원에게 전달한다.',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Ownglyph okticon',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Row(
                          children: [
                            Flexible(
                              child: Text(
                                '  3. 복통ㆍ설사 환자 발생 시 신속히 담임 선생님이나  안전요원에게 보고한다. ',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Ownglyph okticon',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 30),
                        Row(
                          key: section8,
                          children: const [
                            Text(
                              '숙소 안전',
                              style: TextStyle(
                                color: Color(0xFF1A1A1A),
                                fontSize: 20,
                                fontFamily: 'Ownglyph okticon',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                        const Row(
                          children: [
                            Flexible(
                              child: Text(
                                '  1. 베란다 등 위험한 곳이나 ‘위험’이라는 표지가 있거나 위험요소가 있는 곳은 접근을 금지한다.',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Ownglyph okticon',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Row(
                          children: [
                            Flexible(
                              child: Text(
                                '  2. 숙소 내에서 친구 간 지나친 장난을 삼가며, 위험하거나  고가의 물건은 휴대하지 않는다.',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Ownglyph okticon',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Row(
                          children: [
                            Flexible(
                              child: Text(
                                '  3. 사고자 발생 시 인솔선생님이나 안전요원에게 즉시  보고한다.',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Ownglyph okticon',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Row(
                          children: [
                            Flexible(
                              child: Text(
                                '  4. 화재 발생 시 젖은 수건을 이용하여 낮은 자세로 고개를  숙이고, 인솔교사나 안전요원의 지시에 따라 대피 경로로  신속히 이동한다. ',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Ownglyph okticon',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Row(
                          children: [
                            Flexible(
                              child: Text(
                                '  5. 화재발생으로 인한 대피 시 엘리베이터는 절대 이용하지  않으며 아래층으로 대피할 수 없을 경우에는 옥상으로  대피하여 바람이 불어오는 쪽에서 구조를 기다린다. ',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Ownglyph okticon',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Row(
                          children: [
                            Flexible(
                              child: Text(
                                '  6. 화재 예방을 위해 숙소 내에서 흡연 및 전열기구 사용을  절대 금지한다.',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Ownglyph okticon',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 30),
                        Row(
                          key: section9,
                          children: const [
                            Text(
                              '기타 안전',
                              style: TextStyle(
                                color: Color(0xFF1A1A1A),
                                fontSize: 20,
                                fontFamily: 'Ownglyph okticon',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                        const Row(
                          children: [
                            Text(
                              '  1. 먹는 멀미약은 승차 30분~1시간 전에 복용한다.',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'Ownglyph okticon',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                        const Row(
                          children: [
                            Flexible(
                              child: Text(
                                '  2. 이동시 대열을 이탈했을 경우 당황하지 않고 현재 위치에 서 기다린다.',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Ownglyph okticon',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Row(
                          children: [
                            Flexible(
                              child: Text(
                                '  3. 단체 이동시 행렬에 맞추어 걷고 뛰거나 하지 않으며  손에는 가급적 불필요한 물건을 소지하지 않는다.',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Ownglyph okticon',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Row(
                          children: [
                            Flexible(
                              child: Text(
                                '  4. 단체 이동시 정해진 길로 다니고 길이 아닌 곳으로의  이동을 금지한다.',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Ownglyph okticon',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Row(
                          children: [
                            Flexible(
                              child: Text(
                                '  5. 단체 관람 시 뛰거나 큰 소리로 소리를 지르지 않으며  정해진 행렬이나 장소에서 관람한다.',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Ownglyph okticon',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Row(
                          children: [
                            Flexible(
                              child: Text(
                                '  6. 우발상황 발생 시 즉시 인솔교사 및 안전담당자에게  알린다. ',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Ownglyph okticon',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 30),
                        Row(
                          key: section10,
                          children: const [
                            Text(
                              '성폭력(성희롱, 성추행 등) 예방 교육',
                              style: TextStyle(
                                color: Color(0xFF1A1A1A),
                                fontSize: 20,
                                fontFamily: 'Ownglyph okticon',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                        const Row(
                          children: [
                            Flexible(
                              child: Text(
                                '  1. 교육대상 : 학생(3.31.금) 교육 완료, 교원(4.12.수) 교육  완료, 안전담당자, 운전기사',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Ownglyph okticon',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Row(
                          children: [
                            Flexible(
                              child: Text(
                                '  2. 성폭력이란 상대가 원하지 않는 상황에서 일방적으로 성 욕구를 충족하기 위한 강제적 행동으로 강간뿐만 아 니라, 성추행, 성희롱, 성기 노출, 음란물 간행 및 배포 등 을 매개로 인간에게 가하는 신체적, 정신적, 언어적 괴롭힘 을 포함한다.',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Ownglyph okticon',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Row(
                          children: [
                            Text(
                              '  3. 성폭력 발생요인',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'Ownglyph okticon',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30.0),
                          child: Column(
                            children: [
                              DetailText('성차별과 성의 이중 윤리 때문', false),
                              DetailText(
                                  '남성은 사회적 지위와 부를 소유하고 힘, 용기 등의 이미지로 성적 자유가 허용되고 여성은 차별적 지위와 의존적 존재로서 순결을 강요당함',
                                  false),
                              DetailText('왜곡된 성문화와 성 관련 법규의 제도적인 문제점', false),
                            ],
                          ),
                        ),
                        const Row(
                          children: [
                            Text(
                              '  4. 성폭력의 바른 이해',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'Ownglyph okticon',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30.0),
                          child: Column(
                            children: [
                              DetailText('성폭력의 잘못된 생각들', false),
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 50.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Flexible(
                                    child: Text(
                                      'i. 성폭력은 젊은 여자에게만 일어나며 폭력배들에 의   해 우발적으로 일어난다. 여자들의 야한 옷차림이   나 행동이 성폭력을 유발하며 여자가 끝까지 저항하면 강간은 불가능하다.',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontFamily: 'Ownglyph okticon',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Flexible(
                                    child: Text(
                                      'ii. 강간은 정신이상자들에 의해서 일어나며 성폭력은    억제할 수 없는 남성의 성충동에 의해 일어난다.',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontFamily: 'Ownglyph okticon',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Flexible(
                                    child: Text(
                                      'iii. 여성들이 스스로 조심하는 것이 성폭력을 방지하는최선의 방법이다.',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontFamily: 'Ownglyph okticon',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30.0),
                          child: Column(
                            children: [
                              DetailText('성폭력의 올바른 이해', false),
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 50.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Flexible(
                                    child: Text(
                                      'i. 성폭력은 모든 사람들에게 일어날 수 있는 인권침해   의 잔인한 범죄 행위이다.',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontFamily: 'Ownglyph okticon',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Flexible(
                                    child: Text(
                                      'ii. 성폭력은 아는 사람에 의해 일어나는 경우가 많으   며(근친, 애인, 선후배, 직장상사, 동료, 이웃사람 등)    남자도 성폭력의 피해자가 될 수 있다.',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontFamily: 'Ownglyph okticon',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Flexible(
                                    child: Text(
                                      'iii. 성폭력은 한밤중뿐만이 아니라 대낮에 피해자 혹    은 가해자의 집, 학교, 학원주변, 화장실, 직장, 공    원, 만화방, 비디오방, 약수터 등에서 발생할 수 있    다.',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontFamily: 'Ownglyph okticon',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const Row(
                          children: [
                            Text(
                              '  5. 성폭력 피해 방지 지도',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'Ownglyph okticon',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30.0),
                          child: Column(
                            children: [
                              DetailText(
                                  '이성 친구가 방문했을 경우에는 가급적 방안이 아닌 거실에서 대화하도록 하고, 방안에 함께 있을 때에는 조명을 밝게 하고 반드시 방문을 열어 놓는다. ',
                                  false),
                              DetailText(
                                  '복장을 단정히 하고 다니며 언행을 조심하여 성충동의 원인을 제공하지 않는다.',
                                  false),
                              DetailText(
                                  '집안에 혼자 있는 경우에는 위급한 상황이 발생했을 때 연락할 수 있는 이웃집의 전화번호를 알아두고, 현관과 창문 등을 반드시 잠근다. ',
                                  false),
                              DetailText(
                                  '의자에 앉을 때에는 다리 모양을 바르게 하여 성충동을 느끼지 않도록 주의한다. ',
                                  false),
                              DetailText(
                                  '본인이 원하지 않는 성적 행동을 상대방이 하려고 할 때는 단호하게‘하지 말라’고 요구하여야 하며 미소를 짓지 않도록 한다. 특히 아는 사람일수록 초기 단계부터 분명하고 적극적인 거부나 반항의 자세를 취해야 한다. ',
                                  false),
                              DetailText(
                                  '성폭력의 위험이나 불안감이 들 땐, 빨리 그 자리를 피하는 것이 좋다. 망설이다 보면 기회를 놓칠 수 있다.',
                                  false),
                              DetailText(
                                  '성폭력 발생 시 겁먹은 태도를 보이지 말고 자신감 있게 행동한다. 피해자가 두려워하면 가해자를 더욱 자극하게 된다.',
                                  false),
                              DetailText(
                                  '외부와 차단된 공간(노래방, 비디오방 등)에 단둘이 있게 되는 경우, 상대방의 생각이 자신과 다를 수 있음을 알아야 한다. ',
                                  false),
                              DetailText(
                                  '이른 새벽이나 심야에는 혼자 외출하거나 거리를 배회하지 않으며 숙박업소에 가지 않는다. ',
                                  false),
                            ],
                          ),
                        ),
                        const Row(
                          children: [
                            Text(
                              '  6. 성폭력 가해 방지 지도',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'Ownglyph okticon',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30.0),
                          child: Column(
                            children: [
                              DetailText(
                                  '성의 행동에 대한 상대방의“싫다”표현은 분명히“싫다”임을 명심해야 한다.',
                                  false),
                              DetailText(
                                  '상대방이 침묵할 경우 자신의 행동에 동의하는 것으로 착각해서는 안된다. ',
                                  false),
                              DetailText(
                                  '성적인 욕구를 느낄 때는 항상 상대방의 동의를 구하고 그 의사를 존중해야 한다.',
                                  false),
                              DetailText(
                                  '공격적이고 강한 행동이 남성다움이 아니다. 진정한 남자라면 폭력으로 타인의 성적 권리를 침해하지 않는다.',
                                  false),
                              DetailText(
                                  '성폭력은 성행위와 다르며, 전적으로 가해자에게 책임이 있음을 명심한다. ',
                                  false),
                            ],
                          ),
                        ),
                        const Row(
                          children: [
                            Text(
                              '  7. 피해 후 대처 방안',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'Ownglyph okticon',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30.0),
                          child: Column(
                            children: [
                              DetailText(
                                  '증거 보존을 위해 몸을 씻거나 옷을 갈아입지 말고 24시간 이내에 병원이나 경찰서로 가서 신고하고 상담한다.',
                                  false),
                              DetailText(
                                  '24시간 이내에 손상 부위에 대한 적절한 치료와 성병, 임신여부 등을 검사한다. ',
                                  false),
                              DetailText(
                                  '가족 또는 믿을 수 있는 사람과 의논하고 전문 상담소에 상담을 신청하여 실직적인 도움을 받도록 한다.',
                                  false),
                            ],
                          ),
                        ),
                        const SizedBox(height: 30),
                        Row(
                          key: section11,
                          children: const [
                            Text(
                              '감염병 예방수칙 및 거리두기 지침',
                              style: TextStyle(
                                color: Color(0xFF1A1A1A),
                                fontSize: 20,
                                fontFamily: 'Ownglyph okticon',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                        const Row(
                          children: [
                            Flexible(
                              child: Text(
                                '  1. 의무 방역지침 외 모든 행동 수칙은 ‘권고’를 전제한다.',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Ownglyph okticon',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Row(
                          children: [
                            Text(
                              '  2. 올바른 마스크 착용 방법',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'Ownglyph okticon',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30.0),
                          child: Column(
                            children: [
                              DetailText(
                                  '마스크는 침방울을 통한 감염 전파를 차단하는 효과가 있음', false),
                              DetailText(
                                  '개인의 얼굴 크기에 맞는 적당한 마스크를 선택하여 호흡기인 코와 입을 완전히 덮도록 얼굴에 밀착 착용',
                                  false),
                              DetailText(
                                  '감염 위험이 있는 경우 기저질환이 있는 고위험군에는 보건용·수술용 마스크 착용을 권장하며, 보건용·수술용 마스크가 없을 경우 면 마스크 착용도 도움이 됨',
                                  false),
                              DetailText(
                                  '마스크 자체가 오염되지 않도록 마스크를 만지기 전에 손을 깨끗이 씻기',
                                  false),
                              DetailText(
                                  '마스크 착용 시 손을 통한 오염을 방지하기 위하여 마스크를 최대한 만지지 않도록 하며, 만졌다면 30초 이상 비누로 손을 씻거나 손 소독제로 손을 깨끗이 하기',
                                  false),
                              DetailText(
                                  '마스크 사용 후에는 마스크 앞면에 손을 대지 않고 벗도록 하고, 보건용 마스크의 경우 아무 곳에나 두지 말고 즉시 쓰레기통에 버리고 손을 씻도록 하며, 면 마스크의 경우 제품 특성에 맞는 방법으로 자주 세탁하기',
                                  false),
                              DetailText(
                                  '마스크 내부에 휴지나 수건을 덧대는 경우 공기가 새거나 밀착력이 떨어져 차단 효과가 낮아지므로 주의하기',
                                  false),
                              DetailText(
                                  '오염 우려가 적은 곳에서 일시적으로 사용하는 경우 동일인에 한하여 재사용 가능',
                                  false),
                              DetailText(
                                  '마스크를 잃어버린 경우 또는 마스크가 망가지거나 지저분해진 경우 집에서 가져온 여분의 새 마스크 사용하기',
                                  false),
                            ],
                          ),
                        ),
                        const Row(
                          children: [
                            Text(
                              '  3. 이동할 때',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'Ownglyph okticon',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30.0),
                          child: Column(
                            children: [
                              DetailText(
                                  '차량 내에 체온계, 마스크 및 소독 관련 물품 비치하기', false),
                              DetailText(
                                  '운전자 차량 탑승 전 체온 측정 및 마스크 착용 여부 확인하기', false),
                              DetailText(
                                  '학생 차량 탑승 전 코로나19 의심 증상 유무 확인하기', false),
                              DetailText('차량 내에서 전화 통화 시에도 마스크 착용하기', false),
                              DetailText('차량 내에서 음식물 섭취 자제하기', false),
                              DetailText(
                                  '마스크 사용 후에는 마스크 앞면에 손을 대지 않고 벗도록 하고, 보건용 마스크의 경우 아무 곳에나 두지 말고 즉시 쓰레기통에 버리고 손을 씻도록 하며, 면 마스크의 경우 제품 특성에 맞는 방법으로 자주 세탁하기',
                                  false),
                              DetailText(
                                  '차량 내에서도 마스크를 착용하고, 최대한 다른 사람과 거리 유지하기',
                                  false),
                              DetailText('환기가 가능할 경우 운행 전후 자주 환기하기', false),
                            ],
                          ),
                        ),
                        const Row(
                          children: [
                            Text(
                              '  4. 식사할 떄',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'Ownglyph okticon',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30.0),
                          child: Column(
                            children: [
                              DetailText(
                                  '식사 전 흐르는 물과 비누로 30초 이상 손을 씻거나 손 소독제로 손 소독하기',
                                  false),
                              DetailText('음식은 각자 개인 접시에 덜어 먹기', false),
                              DetailText('식사할 때 대화 자제하기', false),
                              DetailText('과도한 비말 생성 행위와 신체 접촉 자제하기', false),
                              DetailText(
                                  '거리두기(최소 1m) 유지가 어려운 경우, 식사 전‧후 마스크 착용 권고',
                                  false),
                            ],
                          ),
                        ),
                        const Row(
                          children: [
                            Flexible(
                              child: Text(
                                '  5. 흡연, 음주, 도박 등 불건전한 행위는 절대 금하며, 적발 시 교칙에 의거 처벌한다.',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Ownglyph okticon',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Row(
                          children: [
                            Flexible(
                              child: Text(
                                '  6. 냉,난방기 등 사용할 때',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Ownglyph okticon',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30.0),
                          child: Column(
                            children: [
                              DetailText(
                                  '(사용 전·후) 냉난방기 내부 및 실내 오염물질 제거를 위해 출입문과 창문을 모두 열어둔 상태에서 송풍 등을 통해 최대 풍량으로 30분 이상 가동 권고',
                                  false),
                              DetailText(
                                  '외부의 신선한 공기가 실내로 충분히 유입되도록 가능한 자주 창문을 개방하여 환기하기',
                                  false),
                              DetailText(
                                  '냉난방기, 공기청정기의 바람이 사람에게 직접 향하지 않도록 바람 방향을 천장 또는 벽으로 향하도록 사용하며, 가능한 바람의 세기를 낮추어 사용하기',
                                  false),
                              DetailText('환기 시에는 창문과 문을 개방하여 맞통풍하기', false),
                              DetailText(
                                  '에어컨을 가동하면서 선풍기를 사용하는 것은 내부 공기 재순환을 유발할 수 있으므로 주의하기',
                                  false),
                              DetailText(
                                  '환기가 불가능한 밀폐시설에서 에어컨을 사용할 경우, 마스크 착용하기',
                                  false),
                            ],
                          ),
                        ),
                        const Row(
                          children: [
                            Flexible(
                              child: Text(
                                '  7. 숙소 이용할 때',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Ownglyph okticon',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30.0),
                          child: Column(
                            children: [
                              DetailText(
                                  '입소 전 발열 등 유증상 의심 학생 대상으로 발열 체크 후, 후속 조치하기',
                                  false),
                              DetailText(
                                  '자연 환기가 가능한 경우 창문을 상시 열어두며, 에어컨 사용 등으로 창문을 상시 열어두기 어려운 경우 2시간마다 1회 이상 환기하기',
                                  false),
                              DetailText('발열 등 의심 증상자를 위한 별도 공간 준비하기', false),
                              DetailText(
                                  '숙소 내 손 세정제(액체 비누), 손 소독제, 휴지, 종이 타월 등을 충분히 비치하기',
                                  false),
                            ],
                          ),
                        ),
                        const Row(
                          children: [
                            Flexible(
                              child: Text(
                                '  8. 관람장 및 공연장 등 실내 출입할 때',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Ownglyph okticon',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30.0),
                          child: Column(
                            children: [
                              DetailText(
                                  '다른 사람과 1m이상 거리 두기, 마스크 착용 등 개인 생활 방역 수칙 준수하기',
                                  false),
                              DetailText(
                                  '다른 사람과 1m이상 거리 두기, 마스크 착용 등 개인 생활 방역 수칙 준수하기',
                                  false),
                              DetailText(
                                  '실내 휴게시설, 카페, 매점 등 다중이용공간에서 가급적 거리두기가 가능하도록 이용하기 ',
                                  false),
                              DetailText(
                                  '숙소 내 손 세정제(액체 비누), 손 소독제, 휴지, 종이 타월 등을 충분히 비치하기',
                                  false),
                            ],
                          ),
                        ),
                        const Row(
                          children: [
                            Flexible(
                              child: Text(
                                '  9. 유원시설(놀이공원, 워터파크 등) 이용할 때',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Ownglyph okticon',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30.0),
                          child: Column(
                            children: [
                              DetailText(
                                  '휴대용 용품(수건, 수영복, 수경, 스노클 등)은 개인 물품 사용하기',
                                  false),
                              DetailText(
                                  '탈의실(라커룸), 대기실(휴게실) 등 실내 공용공간에 머무르는 시간 최소화하기',
                                  false),
                              DetailText(
                                  '실내 휴게실, 카페, 매점 등 다중이용공간에서 밀집되지 않도록 분산하여 이용하기',
                                  false),
                              DetailText('많은 인원이 밀집한 장소는 출입 자제하기', false),
                            ],
                          ),
                        ),
                        const SizedBox(height: 50),
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
