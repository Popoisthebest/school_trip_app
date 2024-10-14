import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:school_trip_app/widgets/tool_exchange_rate/tool_exchange_rate.dart';
import 'package:school_trip_app/widgets/tool_translate/language_drop_down_menu.dart';
import 'package:school_trip_app/widgets/tool_wheather/tool_wheather.dart';
import 'package:url_launcher/url_launcher.dart';

class TripToolScreen extends StatefulWidget {
  const TripToolScreen({super.key});

  @override
  State<TripToolScreen> createState() => _TripToolScreenState();
}

class _TripToolScreenState extends State<TripToolScreen> {
  TextEditingController textEditingController = TextEditingController();

  String selectedLanguage1 = '한국어';
  String selectedLanguage2 = '일본어';

  String selectedLanguageInPaPaGo = 'ja';

  void launchPaPago() {
    if (selectedLanguage1 == selectedLanguage2) {
      swapLanguagesIfSame();
    }
    launchUrl(Uri.parse(
        'https://papago.naver.com/?sk=auto&tk=$selectedLanguageInPaPaGo&st=${textEditingController.text}'));
  }

  void updateSelectedLanguageInPaPaGo() {
    switch (selectedLanguage2) {
      case '한국어':
        selectedLanguageInPaPaGo = 'ko';
        break;
      case '영어':
        selectedLanguageInPaPaGo = 'en';
        break;
      case '일본어':
        selectedLanguageInPaPaGo = 'ja';
        break;
      default:
        selectedLanguageInPaPaGo = 'auto';
    }
  }

  void swapLanguagesIfSame() {
    if (selectedLanguage1 == selectedLanguage2) {
      setState(() {
        String temp = selectedLanguage1;
        selectedLanguage1 = selectedLanguage2;
        selectedLanguage2 = temp;
        updateSelectedLanguageInPaPaGo();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  const SizedBox(
                    height: 46,
                  ),
                  const Row(
                    children: [
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: '수학여행 중\n도쿄 ',
                              style: TextStyle(
                                color: Color(0xFF1A1A1A),
                                fontSize: 32,
                                fontFamily: 'Ownglyph okticon',
                                fontWeight: FontWeight.w700,
                                height: 0,
                              ),
                            ),
                            TextSpan(
                              text: '날씨',
                              style: TextStyle(
                                color: Color(0xFF4F9AD4),
                                fontSize: 32,
                                fontFamily: 'Ownglyph okticon',
                                fontWeight: FontWeight.w700,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            width: 2, color: Color(0xFF4D9E8A)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ToolWheather('10.22', '14°22°', 'cloudsun'),
                          ToolWheather('10.23', '13°21°', 'cloudsun'),
                          ToolWheather('10.24', '15°22°', 'cloudsun'),
                          ToolWheather('10.24', '14°22°', 'sun'),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Row(
                    children: [
                      Text(
                        '다른 언어로\n번역',
                        style: TextStyle(
                          color: Color(0xFF1A1A1A),
                          fontSize: 32,
                          fontFamily: 'Ownglyph okticon',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 60,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            width: 2, color: Color(0xFF4D9E8A)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Stack(
                      alignment: Alignment.centerLeft,
                      children: [
                        const Positioned(
                          left: 45,
                          child: Text(
                            '언어 감지',
                            style: TextStyle(
                              color: Color(0xFF1A1A1A),
                              fontSize: 16,
                              fontFamily: 'Ownglyph okticon',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 168,
                          child: SvgPicture.asset(
                              'assets/tool_screen_icons/arrows_leftright_icon.svg'),
                        ),
                        Positioned(
                          right: 45,
                          child: LanguageDropDownMenu(
                            initialValue: selectedLanguage2,
                            onLanguageSelected: (String language) {
                              setState(
                                () {
                                  selectedLanguage2 = language;
                                  updateSelectedLanguageInPaPaGo();
                                },
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 200,
                        decoration: ShapeDecoration(
                          color: const Color(0xFFEEEEEE),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 20, horizontal: 24),
                          child: TextField(
                            cursorHeight: 18,
                            controller: textEditingController,
                            maxLines: null, // 여러 줄 입력 가능하도록 설정
                            decoration: const InputDecoration.collapsed(
                              hintText: '번역할 내용을 입력해주세요.',
                              hintStyle: TextStyle(
                                color: Color(0xFFBCBCBC),
                                fontSize: 14,
                                fontFamily: 'Ownglyph okticon',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      launchPaPago();
                    },
                    child: Container(
                      height: 60,
                      decoration: ShapeDecoration(
                        color: const Color(0xFF4D9E8A),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Center(
                        child: Padding(
                          padding: EdgeInsets.only(top: 21, bottom: 18),
                          child: Text(
                            '번역하기',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Ownglyph okticon',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 2, // 선의 높이
              color: const Color(0XFF4D9E8A), // 초록색 선
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 26, 0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        '2024. 10. 02 23:50 기준',
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.5),
                          fontSize: 12,
                          fontFamily: 'Ownglyph okticon',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  const Row(
                    children: [
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: '환율은 100엔당\n',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                                fontFamily: 'Ownglyph okticon',
                                fontWeight: FontWeight.w700,
                                height: 0,
                              ),
                            ),
                            TextSpan(
                              text: '905.56원',
                              style: TextStyle(
                                color: Color(0xFF4F9AD4),
                                fontSize: 30,
                                fontFamily: 'Ownglyph okticon',
                                fontWeight: FontWeight.w700,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Column(
                    children: [
                      ExchangeRate('korea', 'KRW', '905.56 ₩', '한국 원'),
                      const SizedBox(
                        height: 34,
                      ),
                      ExchangeRate('japan', 'JPY', '100 ¥', '일본 엔'),
                      const SizedBox(
                        height: 34,
                      ),
                      ExchangeRate('usa', 'USD', '0.68 \$', '미국 달러'),
                    ],
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                ],
              ),
            ),
            Container(
              height: 2, // 선의 높이
              color: const Color(0XFF4D9E8A), // 초록색 선
            ),
            const SizedBox(
              height: 30,
            ),
            // 계산기 부분
          ],
        ),
      ),
    );
  }
}
