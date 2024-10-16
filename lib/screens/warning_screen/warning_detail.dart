import 'package:flutter/material.dart';
import 'package:school_trip_app/widgets/travel_screens/custom_app_bar.dart';

class WarningDetail extends StatelessWidget {
  const WarningDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          // 전체 앱에 적용될 기본 텍스트 스타일 설정
          textTheme: const TextTheme(
            bodyMedium: TextStyle(
              fontFamily: "Ownglyph okticon", // 기본 폰트 설정
            ),
          ),
        ),
        home: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildCustomAppBar(context, '유의사항'),
                const SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "현장체험학습지도 주의사항",
                        style: TextStyle(
                          fontFamily: "Ownglyph okticon",
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff000000),
                          height: 31 / 24,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      const Text(
                        "출발 전",
                        style: TextStyle(
                          fontFamily: "Ownglyph okticon",
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff1a1a1a),
                          height: 26 / 20,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      RichText(
                        text: const TextSpan(
                          style: TextStyle(
                            fontFamily: "Ownglyph okticon",
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff000000),
                            height: 1.7, // 텍스트 간 간격을 약간 줄임
                          ),
                          children: [
                            TextSpan(
                              text: '1. 출발당일에는 시간을 엄수하여 집합한다.\n',
                              style: TextStyle(
                                  decoration: TextDecoration.underline),
                            ),
                            TextSpan(
                              text: '    • 집합장소: 대전대신고등학교\n',
                              // 밑줄
                            ),
                            TextSpan(
                              text:
                                  '    • 복장: 간편한 사복 차림(출발 전 복장 및 소지품 검사, 일본 현지에서는 야구점퍼)\n',
                            ),
                            TextSpan(
                              text: '2. 세면도구와 필기용구를 준비한다.\n',
                            ),
                            TextSpan(
                              text: '3. 출발 전날은 충분한 수면을 취한다.(자외선, 배멀미 예방)\n',
                            ),
                            TextSpan(
                              text:
                                  '4. 편안한 활동을 할 수 있는 간편복과 우천 시를 대비한 우산과 우의(우비)를 준비한다.\n',
                            ),
                            TextSpan(
                              text:
                                  '5. 불필요한 물건을 지참하지 않도록 한다.(주류, 담배류, 기타 귀중품)\n',
                              style: TextStyle(
                                  decoration: TextDecoration.underline),
                            ),
                            TextSpan(
                              text: '6. 필요 이상의 현금을 소지하지 않는다.\n',
                              style: TextStyle(
                                  decoration: TextDecoration.underline),
                            ),
                            TextSpan(
                              text:
                                  '7. 자신의 체질에 맞는 간단한 의약품을 준비한다.(멀미약, 소화제 등)\n',
                            ),
                            TextSpan(
                              text: '8. 안전사고에 특히 유의한다.',
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 45,
                      ),
                      const Text(
                        "여행 준비",
                        style: TextStyle(
                          fontFamily: "Ownglyph okticon",
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff1a1a1a),
                          height: 26 / 20,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      RichText(
                        text: const TextSpan(
                          style: TextStyle(
                            fontFamily: "Ownglyph okticon",
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff000000),
                            height: 1.7, // 텍스트 간 간격을 약간 줄임
                          ),
                          children: [
                            TextSpan(
                              text: '1. 여권 만료기간 및 단수 또는 복수여권인지 꼭 확인한다.\n',
                            ),
                            TextSpan(
                              text:
                                  '2. 여행 도중 외부충격으로부터 내용물을 보호할 수 있는 하드케이스와 같은 딱딱한 가방, 도난방지를 위해 잠금 장치가 있는 가방을 준비한다.\n',
                            ),
                            TextSpan(
                              text:
                                  '3. 호텔에 따라 치약, 칫솔, 면도기, 헤어드라이어를 구비하고 있는 곳도 있지만 개별적으로 준비한다.\n',
                            ),
                            TextSpan(
                              text:
                                  '4. 진통제, 소화제, 멀미약, 지사제, 변비약 등 개인 상비약을 준비한다. \n',
                            ),
                            TextSpan(
                              text:
                                  '5. 기타 썬크림, 선글라스, 모자, 우산(우의), 필기도구를 준비한다.\n',
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 45,
                      ),
                      const Text(
                        "버스에서",
                        style: TextStyle(
                          fontFamily: "Ownglyph okticon",
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff1a1a1a),
                          height: 26 / 20,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      RichText(
                        text: const TextSpan(
                          style: TextStyle(
                            fontFamily: "Ownglyph okticon",
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff000000),
                            height: 1.7, // 텍스트 간 간격을 약간 줄임
                          ),
                          children: [
                            TextSpan(
                              text: '1. 버스 내의 지정된 좌석에 앉고, 안전띠를 반드시 착용한다.\n',
                              style: TextStyle(
                                  decoration: TextDecoration.underline),
                            ),
                            TextSpan(
                              text:
                                  '2. 버스 내의 기물을 훼손하지 않으며 고성방가 등 질서를 문란하게 하는 행동을 삼가한다. \n',
                            ),
                            TextSpan(
                              text:
                                  '3. 승하차 시 질서를 지키며 하차 시에는 반드시 버스의 위치와 차량번호를 확인한다.\n',
                            ),
                            TextSpan(
                              text: '4. 승차가 완료되면 차량 책임 학생(반장)은 이상 유무를 알린다.\n',
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 45,
                      ),
                      const Text(
                        "공항에서",
                        style: TextStyle(
                          fontFamily: "Ownglyph okticon",
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff1a1a1a),
                          height: 26 / 20,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      RichText(
                        text: const TextSpan(
                          style: TextStyle(
                            fontFamily: "Ownglyph okticon",
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff000000),
                            height: 1.7, // 텍스트 간 간격을 약간 줄임
                          ),
                          children: [
                            TextSpan(
                              text: '1. 공항에서는 인원이 많고 복잡한 관계로 개인행동은 삼가한다. \n',
                              style: TextStyle(
                                  decoration: TextDecoration.underline),
                            ),
                            TextSpan(
                              text: '2. 수속 및 탑승 시 한 줄로 질서를 지킨다. \n',
                            ),
                            TextSpan(
                              text: '3. 승무원의 주의사항에 유의한다.\n',
                            ),
                            TextSpan(
                              text: '4. 소란을 피우거나 지정된 장소 이외에는 가지 않는다. \n',
                            ),
                            TextSpan(
                              text: '5. 기물에 손대거나 훼손하는 일이 없도록 한다.\n',
                            ),
                            TextSpan(
                              text: '6. 바닥에 휴지 및 오물을 버리지 않는다. \n',
                            ),
                            TextSpan(
                              text: '7. 안전사고에 특히 유의한다.\n',
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 45,
                      ),
                      const Text(
                        "견학 시",
                        style: TextStyle(
                          fontFamily: "Ownglyph okticon",
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff1a1a1a),
                          height: 26 / 20,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      RichText(
                        text: const TextSpan(
                          style: TextStyle(
                            fontFamily: "Ownglyph okticon",
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff000000),
                            height: 1.7, // 텍스트 간 간격을 약간 줄임
                          ),
                          children: [
                            TextSpan(
                              text:
                                  '1. 안내인의 주의사항을 잘 듣고 행동하며 전시물에 손을 대지 않는다. \n',
                              style: TextStyle(
                                  decoration: TextDecoration.underline),
                            ),
                            TextSpan(
                              text: '2. 위험한 곳에 절대로 접근하지 않는다.\n',
                            ),
                            TextSpan(
                              text: '3. 출입 금지 구역에 접근하지 않고, 쓰레기를 함부로 버리지 않는다.\n',
                            ),
                            TextSpan(
                              text:
                                  '4. 일정표와 시간 계획을 항상 숙지하여 집합시간을 정확히 지키고 개인행동이 필요한 경우에는 인솔선생님의 허락을 받는다. (집합시간 엄수)\n',
                              style: TextStyle(
                                  decoration: TextDecoration.underline),
                            ),
                            TextSpan(
                              text:
                                  '5. 관광객을 희롱하거나 관광객과 다투지 않으며 항상 질서와 예의를 지킨다.\n',
                            ),
                            TextSpan(
                              text:
                                  '6. 야외활동 시 허약한 급우를 도와주고 이상이 있을 때는 즉시 담임선생님께 알린다.\n',
                            ),
                            TextSpan(
                              text: '7. 기념품 구입은 허가된 시간에만 하되 과다한 구입을 삼간다. \n',
                            ),
                            TextSpan(
                              text:
                                  '8. 견학한 것을 틈틈이 기록해 두어 감상문(기행문) 또는 보고서 작성에 참고하고, 의미 있는 현장체험 학습이 되도록 노력한다.\n',
                            ),
                            TextSpan(
                              text:
                                  '9. 관광지는 사람과 차량이 많은 관계로 대열에서 벗어나는 일이 없어야 한다.\n',
                              style: TextStyle(
                                  decoration: TextDecoration.underline),
                            ),
                            TextSpan(
                              text:
                                  '10. 명찰에 기재된 비상 연락처를 숙지하여 일행과 떨어졌을 때 연락할 수 있도록 하고, 관광지에서 일행과 떨어지면 제자리에서 기다립니다. \n',
                              style: TextStyle(
                                  decoration: TextDecoration.underline),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 45,
                      ),
                      const Text(
                        "숙소에서",
                        style: TextStyle(
                          fontFamily: "Ownglyph okticon",
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff1a1a1a),
                          height: 26 / 20,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      RichText(
                        text: const TextSpan(
                          style: TextStyle(
                            fontFamily: "Ownglyph okticon",
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff000000),
                            height: 1.7, // 텍스트 간 간격을 약간 줄임
                          ),
                          children: [
                            TextSpan(
                              text:
                                  '1. 실내에서는 정숙을 유지하고 과격한 행동을 하지 않는다. (고성방가, 큰소리의 음악 절대 금지)\n',
                            ),
                            TextSpan(
                              text: '2. 화장실을 청결하게 사용하고, 절전 ․ 절수한다. \n',
                            ),
                            TextSpan(
                              text:
                                  '3. 시설물 및 비품을 깨끗이 사용하고, 낙서 및 훼손하는 일이 없도록 한다. (훼손 시 시공비를 포함한 피해액 전액 변상하여야 함)\n',
                              style: TextStyle(
                                  decoration: TextDecoration.underline),
                            ),
                            TextSpan(
                              text:
                                  '4. 소지품을 잘 간수한다. (현금, 귀중품등은 담임선생님께 보관할 것)\n',
                              style: TextStyle(
                                  decoration: TextDecoration.underline),
                            ),
                            TextSpan(
                              text:
                                  '5. 현관문은 자동으로 잠기므로, 외출 시 방 카드키는 꼭 챙겨야 됩니다. \n',
                            ),
                            TextSpan(
                              text: '6. 선생님의 허락 없이 외출하지 않는다. \n',
                            ),
                            TextSpan(
                              text: '7. 숙소 위치를 알아두고 전화번호를 메모하여 휴대한다. \n',
                            ),
                            TextSpan(
                              text:
                                  '8. 대신인의 긍지를 살려 학생 신분에 어긋나는 행위를 하지 않고 즐겁고 보람찬 체험 학습이 되도록 서로 노력한다. \n',
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 45,
                      ),
                      const Text(
                        "종료 후",
                        style: TextStyle(
                          fontFamily: "Ownglyph okticon",
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff1a1a1a),
                          height: 26 / 20,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      RichText(
                        text: const TextSpan(
                          style: TextStyle(
                            fontFamily: "Ownglyph okticon",
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff000000),
                            height: 1.7, // 텍스트 간 간격을 약간 줄임
                          ),
                          children: [
                            TextSpan(
                              text:
                                  '1. 참가 학생 전원이 감상문(기행문) 또는 보고서를 쓰도록 지도하고 우수작은 표창한다.\n',
                            ),
                            TextSpan(
                              text:
                                  '2. 가능한 한 빠른 시일 안에 현장체험 학습의 들뜬 기분을 가라앉히고 학업에 전념할 수 있도록 지도한다.\n',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "식단에 포함되는\n알레르기 유발 식품 19가지",
                        style: TextStyle(
                          fontFamily: "Ownglyph okticon",
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff000000),
                          height: 31 / 24,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                        width:
                            MediaQuery.of(context).size.width, // 화면의 전체 너비 사용
                        height: 90, // 화면의 30% 높이 사용
                        decoration: ShapeDecoration(
                          color: const Color(0xFF6DAF9F),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(16.0), // 텍스트에 패딩 추가
                          child: Text(
                            "난류, 우유, 메밀, 땅콩, 대두, 밀, 고등어, 게, 새우, 돼지고기, 복숭아, 토마토, 아황산염, 호두, 닭고기, 쇠고기, 오징어, 조개류(굴, 전복, 홉합 포함), 잣",
                            style: TextStyle(
                              fontFamily: "Ownglyph okticon",
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color.fromARGB(255, 255, 255, 255),
                              height: 1.5, // 텍스트 간 간격 설정
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Table(
                    border: TableBorder.all(color: Colors.grey),
                    columnWidths: const {
                      0: FlexColumnWidth(1), // 날짜
                      1: FlexColumnWidth(2), // 식당명
                      2: FlexColumnWidth(2), // 식사
                      3: FlexColumnWidth(3), // 유사식품
                    },
                    children: [
                      // 헤더
                      const TableRow(
                        decoration: BoxDecoration(
                            color: Color(0xFF5EA795)), // #5EA795 초록색
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              '날짜',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              '식당명',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              '식단',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              '유발식품',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      // 내용
                      buildTableRow('10/22 (화) 중식', '스카이까', '돈테이', '소고기, 대두유'),
                      buildTableRow('10/22 (화) 중식', '샤보르', '샤브뷔페',
                          '난류, 우유, 메밀, 대두, 밀, 고등어, 게, 새우, 돼지고기, 토마토, 호두, 닭고기, 쇠고기, 오징어, 조개류, 잣'),
                      buildTableRow('10/22 (화) 중식', '오션 뷰뷔페', '아메리칸 뷔페',
                          '난류, 우유, 메밀, 대두, 밀, 새우, 돼지고기, 토마토, 호두, 닭고기, 쇠고기'),
                      buildTableRow('10/22 (화) 석식', '샤보르', '샤브뷔페',
                          '난류, 우유, 메밀, 대두, 밀, 고등어, 게, 새우, 돼지고기, 토마토, 호두, 닭고기, 쇠고기, 오징어, 조개류, 잣'),
                      buildTableRow('10/22 (화) 석식', '오션 뷰뷔페', '아메리칸 뷔페',
                          '난류, 우유, 메밀, 대두, 밀, 새우, 돼지고기, 토마토, 호두, 닭고기, 쇠고기'),
                      buildTableRow('10/23 (수) 조식', '신주쿠 워싱턴 호텔', '아메리칸 조식 뷔페',
                          '난류, 우유, 메밀, 대두, 밀, 새우, 돼지고기, 토마토, 호두, 닭고기, 쇠고기'),
                      buildTableRow(
                          '10/23 (수) 중식', '디즈니랜드 자유식', '자유식', '메뉴 확인할 것'),
                      buildTableRow(
                          '10/23 (수) 석식', '디즈니랜드 자유식', '자유식', '메뉴 확인할 것'),
                      buildTableRow('10/24 (목) 중식', '로한소', '대나무밭 정식',
                          '대나무, 생선, 난류, 우유, 메밀, 대두, 밀, 새우, 돼지고기, 토마토, 호두, 닭고기, 쇠고기'),
                      buildTableRow('10/24 (목) 석식', '가스트로', '치즈 스테이크',
                          '치즈, 난류, 우유, 메밀, 대두, 밀, 새우, 돼지고기, 토마토, 호두, 닭고기, 쇠고기'),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

TableRow buildTableRow(
    String date, String restaurant, String meal, String allergen) {
  return TableRow(
    children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(date),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(restaurant),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(meal),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(allergen),
      ),
    ],
  );
}
