import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:school_trip_app/widgets/src/ui/app.dart';
import 'package:school_trip_app/widgets/tool_calculator/tool_calculator.dart';
import 'package:school_trip_app/widgets/tool_exchange_rate/tool_exchange_rate.dart';
import 'package:school_trip_app/widgets/tool_wheather/tool_wheather.dart';

class TripToolScreen extends StatefulWidget {
  const TripToolScreen({super.key});

  @override
  State<TripToolScreen> createState() => _TripToolScreenState();
}

class _TripToolScreenState extends State<TripToolScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SingleChildScrollView(
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
                            ToolWheather('10.22', '14°/22°', 'cloudsun'),
                            ToolWheather('10.23', '13°/21°', 'cloudsun'),
                            ToolWheather('10.24', '15°/22°', 'cloudsun'),
                            ToolWheather('10.24', '14°/22°', 'sun'),
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
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 45.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Text(
                                  '한국어',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF1A1A1A),
                                    fontSize: 16,
                                    fontFamily: 'Ownglyph okticon',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                SvgPicture.asset(
                                    'assets/tool_screen_icons/downcare_icon.svg'),
                                // const SizedBox(
                                //   width: 48,
                                // ),
                              ],
                            ),
                            SvgPicture.asset(
                                'assets/tool_screen_icons/arrows_leftright_icon.svg'),
                            Row(
                              children: [
                                // const SizedBox(
                                //   width: 48,
                                // ),
                                const Text(
                                  '일본어',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF1A1A1A),
                                    fontSize: 16,
                                    fontFamily: 'Ownglyph okticon',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                SvgPicture.asset(
                                    'assets/tool_screen_icons/downcare_icon.svg'),
                              ],
                            ),
                          ],
                        ),
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
                        ),
                        const Positioned(
                          top: 20,
                          left: 24,
                          child: Flexible(
                            child: Text(
                              '번역할 내용을 입력해주세요.',
                              style: TextStyle(
                                color: Color(0xFFBCBCBC),
                                fontSize: 14,
                                fontFamily: 'Ownglyph okticon',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 60,
                      decoration: ShapeDecoration(
                        color: const Color(0xFF4D9E8A),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 21, 0, 18),
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
                          )
                        ],
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  children: [
                    ConstrainedBox(
                        constraints: const BoxConstraints(
                          maxHeight: 1000, // 최대 높이 설정
                        ),
                        child: const App())
                    // const Row(
                    //   children: [
                    //     SizedBox(
                    //       width: 10,
                    //     ),
                    //     Text(
                    //       '계산기',
                    //       style: TextStyle(
                    //         color: Color(0xFF1A1A1A),
                    //         fontSize: 32,
                    //         fontFamily: 'Ownglyph okticon',
                    //         fontWeight: FontWeight.w700,
                    //       ),
                    //     )
                    //   ],
                    // ),
                    // const Padding(
                    //   padding: EdgeInsets.only(right: 10.0),
                    //   child: Row(
                    //     mainAxisAlignment: MainAxisAlignment.end,
                    //     children: [
                    //       // 여기에 결과값 표시
                    //       Text(
                    //         '0',
                    //         style: TextStyle(
                    //           color: Colors.black,
                    //           fontSize: 36,
                    //           fontFamily: 'Ownglyph okticon',
                    //           fontWeight: FontWeight.w700,
                    //         ),
                    //       )
                    //     ],
                    //   ),
                    // ),
                    // const SizedBox(
                    //   height: 4,
                    // ),
                    // Container(
                    //   height: 440,
                    //   decoration: ShapeDecoration(
                    //     shape: RoundedRectangleBorder(
                    //       side: const BorderSide(
                    //           width: 2, color: Color(0xFF4D9E8A)),
                    //       borderRadius: BorderRadius.circular(10),
                    //     ),
                    //   ),
                    //   child: const Padding(
                    //     padding: EdgeInsets.symmetric(
                    //       vertical: 25,
                    //       horizontal: 22,
                    //     ),
                    //     child: Column(
                    //       // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    //       children: [
                    //         // FirstLineCalculator('AC', 'devide'),
                    //         // SecondLineCalculator('7', '8', '9', 'multiply'),
                    //         // ThirdLineCalculator('4', '5', '6', 'minus'),
                    //         // FourthLineCalculator('1', '2', '3', 'plus'),
                    //         // FifthLineCalculator('0', '.', 'equal'),
                    //       ],
                    //     ),
                    //   ),
                    // ),
                    // const SizedBox(
                    //   height: 80,
                    // ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
