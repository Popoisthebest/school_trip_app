import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:school_trip_app/widgets/travel_screens/custom_app_bar.dart';
import 'package:school_trip_app/widgets/travel_screens/disney_componets/detail_text.dart';

class EmergencyScreen extends StatefulWidget {
  const EmergencyScreen({super.key});

  @override
  State<EmergencyScreen> createState() => _EmergencyScreenState();
}

class _EmergencyScreenState extends State<EmergencyScreen> {
  final ScrollController _scrollController = ScrollController();

  //각 목차별 글로벌 키
  GlobalKey emergency = GlobalKey();

  GlobalKey phone_number = GlobalKey();

  GlobalKey descending_stage = GlobalKey();

  GlobalKey aed_method = GlobalKey();

  GlobalKey cpr_method = GlobalKey();

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
          buildCustomAppBar(context, '긴급사항'),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      // 팝업창
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                        'assets/emergency_screen_icons/list_icon.png'),
                                    const SizedBox(width: 8),
                                    const Text(
                                      '긴급사항',
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
                                          'assets/emergency_screen_icons/x_list.svg'),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            content: SizedBox(
                              height: 320,
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
                                                emergency); // 위급 상황로 이동
                                          },
                                          child: const Text(
                                            '1. 위급 상황 발생 또는 일행과 떨어졌을 경우',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20,
                                              fontFamily: 'Ownglyph okticon',
                                              fontWeight: FontWeight.w400,
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
                                          Navigator.of(context).pop(); // 팝업 닫기
                                          scrollToSection(phone_number);
                                        },
                                        child: const Text(
                                          '2. 전화이용안내',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20,
                                            fontFamily: 'Ownglyph okticon',
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
                                          Navigator.of(context).pop(); // 팝업 닫기
                                          scrollToSection(descending_stage);
                                        },
                                        child: const Text(
                                          '3. 완강기 사용법',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20,
                                            fontFamily: 'Ownglyph okticon',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  const SizedBox(height: 15),
                                  Row(
                                    children: [
                                      Flexible(
                                        child: GestureDetector(
                                          onTap: () {
                                            Navigator.of(context)
                                                .pop(); // 팝업 닫기
                                            scrollToSection(aed_method);
                                          },
                                          child: const Text(
                                            '4. 자동제세동기(AED) 사용법',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20,
                                              fontFamily: 'Ownglyph okticon',
                                              fontWeight: FontWeight.w400,
                                            ),
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
                                          Navigator.of(context).pop(); // 팝업 닫기
                                          scrollToSection(cpr_method);
                                        },
                                        child: const Text(
                                          '5. 심폐소생술 방법',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20,
                                            fontFamily: 'Ownglyph okticon',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Column(
                        children: [
                          Container(
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
                                  Image.asset(
                                      'assets/emergency_screen_icons/list_icon.png'),
                                  const SizedBox(width: 9),
                                  const Text(
                                    '긴급사항 안내',
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
                          const SizedBox(height: 22),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: Column(
                      children: [
                        Row(
                          key: emergency,
                          children: const [
                            Text(
                              '위급 상황 발생 또는 일행과 \n떨어졌을 경우',
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
                              '(1) 담임교사에게 즉시 전화를 한다.',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontFamily: 'Ownglyph okticon',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                        const Row(
                          children: [
                            Text(
                              '(2) 긴급 연락처',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontFamily: 'Ownglyph okticon',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                        const Row(
                          children: [
                            Text(
                              '  1. 일본 경찰 전화번호 - 110',
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
                              '  2. 일본 화재/구급차 전화번호 - 119',
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
                              '  3. 일본 분실물 신고 (경찰) - 03) 3814-4151',
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
                              '  4. 일본 분실물 신고 (도쿄메트로) - 03) 3834-5577',
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
                              '  5. 일본 분실물 신고 (JR) - 03) 3231-1880',
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
                        const Row(
                          children: [
                            Flexible(
                              child: Text(
                                '  7. 병원 안내 - 03) 5285-8181',
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
                                '  8. 여행자정보센터',
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
                              DetailText('(교토) 075) 343-0548', false),
                              DetailText('(도쿄) 03) 3201-3331', false),
                              DetailText('(간사이) 072) 456-6160', false),
                              DetailText('(나리타) 047) 634-5877', false),
                            ],
                          ),
                        ),
                        const Row(
                          children: [
                            Flexible(
                              child: Text(
                                '  9. 주일본대한민국대사관',
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
                                  '주소 : 東京都港区南麻布 1-2-5(우편번호 106-0047)', false),
                              DetailText(
                                  '홈페이지 : http://jpn-tokyo.mofa.go.kr/', false),
                              DetailText(
                                  '긴급연락처 : (81-90)1693-5773(근무시간), (81-90)4544-6602(근무시간 외)',
                                  false),
                              DetailText(
                                  '업무시간 : (월-금) 09:00~18:00, 점심시간 12:00~13:30/ 영사과 09:00~16:00',
                                  false),
                            ],
                          ),
                        ),
                        const Row(
                          children: [
                            Flexible(
                              child: Text(
                                '  10. 주일본대한민국대사관 영사과',
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
                                  '주소 : 東京都港区南麻布1-7-32(우편번호 106-0047) ', false),
                              DetailText('업무시간', false),
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
                                      'i. 여권,가족관계등록, 국민등록, 영사확인 접수 : 09:00~16:00',
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
                                      'ii. 비자접수 : 09:00~11:30 / 비자교부 : 14:00~16:00',
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
                                      'iii. 토,일요일 및 일본국 공휴일, 우리나라 국경일(3.1절, 광복절, 개천절, 한글날) 휴무',
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
                              DetailText('연락처 : (81-3)3455-2601~3', false),
                              DetailText('팩스번호 : (81-3)3455-2018', false),
                              DetailText('이메일 : consular_jp@mofa.go.kr', false),
                              DetailText(
                                  '업무시간 외 긴급연락처 : +81-90-1693-5773', false),
                              DetailText(
                                  '업무시간 외 사건사고(복행, 인신구속, 신변위협 등) 긴급연락처 : +81-90-4544-6602',
                                  false),
                              DetailText('현지 긴급연락', false),
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
                                      'i. 경찰 : 110',
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
                                      'ii. 신주쿠 니시구치 파출소 : 03-3346-0110',
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
                                      'iii. 화재, 구급 : 119',
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
                              DetailText('도쿄 내 병원 안내', false),
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
                                      'i. 03-5272-0303(24시간 대응, 일본어)',
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
                                      'ii. 03-5285-8181(09:00-20:00, 한국어)',
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
                                      'iii. 도쿄의과대학병원 +81-03-3342-6111',
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
                                      'iv. 게이오 대학병원 +81-03-3353-1211',
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
                                      'v. 하코네병원 +81-0465-22-3196',
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
                        const SizedBox(height: 30),
                        Row(
                          key: phone_number,
                          children: const [
                            Text(
                              '전화이용안내',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontFamily: 'Ownglyph okticon',
                                fontWeight: FontWeight.w700,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                        const Row(
                          children: [
                            Flexible(
                              child: Text(
                                '(1) 일본에서 한국으로 걸 때 : 001-82(국가번호)-지역번호(0을 빼고)-전화번호 예) 일본에서 학교로 걸 때 : ☎ 001-82-42-585-5901',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Ownglyph okticon',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            )
                          ],
                        ),
                        const Row(
                          children: [
                            Flexible(
                              child: Text(
                                '(2) 영사콜센터 : 해외에서 사건 · 사고를 당하거나 긴급한 상황에 처할 경우 영사콜센터로 전화하면 24시간 연중무휴 상담서비스 제공',
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
                              '1. 국내: 02-3210-0404',
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
                              '2. 해외(유료): +82-2-3210-0404',
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
                              '3. 해외(무료): +800-2100-0404',
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
                          key: descending_stage,
                          children: const [
                            Text(
                              '완강기 사용방법',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontFamily: 'Ownglyph okticon',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Image.asset(
                      'assets/emergency_screen_images/emergency_screen_image1.png'),
                  Container(
                    height: 2,
                    decoration: const BoxDecoration(color: Colors.black),
                  ),
                  const SizedBox(height: 35),
                  Padding(
                    padding: const EdgeInsets.only(left: 24.0),
                    child: Row(
                      key: aed_method,
                      children: const [
                        Text(
                          '자동제세동기(AED) 사용법',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'Ownglyph okticon',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Image.asset(
                      'assets/emergency_screen_images/emergency_screen_image2.png'),
                  const SizedBox(height: 35),
                  Padding(
                    padding: const EdgeInsets.only(left: 24.0),
                    child: Row(
                      key: cpr_method,
                      children: const [
                        Text(
                          '심폐소생술(CPR) 방법',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'Ownglyph okticon',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Image.asset(
                      'assets/emergency_screen_images/emergency_screen_image3.png'),
                  const SizedBox(
                    height: 52,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
