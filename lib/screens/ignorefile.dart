import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChecklistScreen(),
    );
  }
}

class ChecklistScreen extends StatefulWidget {
  @override
  _ChecklistScreenState createState() => _ChecklistScreenState();
}

class _ChecklistScreenState extends State<ChecklistScreen> {
  // 체크 상태를 관리하는 리스트
  final List<bool> _isChecked =
      List.generate(20, (index) => false); // 체크박스 상태 리스트

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Table(
          columnWidths: const {
            0: FlexColumnWidth(3), // 첫 번째 열의 너비 비율
            1: FlexColumnWidth(5), // 두 번째 열의 너비 비율
            2: FlexColumnWidth(1), // 세 번째 열 (체크박스) 너비 비율 줄이기
          },
          border: TableBorder.all(
            color: Colors.grey,
            width: 1,
          ),
          children: [
            // 첫 번째 항목 - 필수 소지품
            TableRow(children: [
              _buildStyledText('필수 소지품'),
              _buildNestedTable([
                _buildTableRow('여권 / 여권사본', 0),
                _buildTableRow('여행용 캐리어', 1),
                _buildTableRow('신용카드', 2),
                _buildTableRow('현지화폐', 3),
              ]),
            ]),

            // 두 번째 항목 - 의류
            TableRow(children: [
              _buildStyledText('의류'),
              _buildNestedTable([
                _buildTableRow('생활복', 4),
                _buildTableRow('여벌 옷', 5),
                _buildTableRow('재킷 / 가디건', 6),
              ]),
            ]),

            // 세 번째 항목 - 위생용품
            TableRow(children: [
              _buildStyledText('위생용품'),
              _buildNestedTable([
                _buildTableRow('세면도구', 7),
                _buildTableRow('생리용품', 8),
              ]),
            ]),

            // 네 번째 항목 - 기타
            TableRow(children: [
              _buildStyledText('기타'),
              _buildNestedTable([
                _buildTableRow('개인의약품', 9),
                _buildTableRow('손목시계', 10),
                _buildTableRow('한국음식', 11),
              ]),
            ]),
          ],
        ),
      ),
    );
  }

  // 스타일을 적용한 텍스트 빌드 함수 (세로 중앙 정렬 포함)
  Widget _buildStyledText(String text) {
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 50, // 임의의 높이 지정
            child: Align(
              alignment: Alignment.center, // 세로 중앙 정렬
              child: Text(
                text,
                style: const TextStyle(
                  fontFamily: "Ownglyph okticon",
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff1a1a1a),
                  height: 32 / 12,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }

  // 스타일이 적용된 TableRow 빌드 함수
  TableRow _buildTableRow(String text, int index) {
    return TableRow(children: [
      Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            text,
            style: const TextStyle(
              fontFamily: "Ownglyph okticon",
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Color(0xff1a1a1a),
              height: 16 / 12,
            ),
            textAlign: TextAlign.center,
          )),
      // 체크박스 열의 크기를 줄임
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0), // 위아래 간격
        child: Checkbox(
          value: _isChecked[index],
          onChanged: (bool? value) {
            setState(() {
              _isChecked[index] = value!;
            });
          },
        ),
      ),
    ]);
  }

  // Nested Table을 위한 함수
  Table _buildNestedTable(List<TableRow> rows) {
    return Table(
      border: TableBorder.all(
        color: Colors.grey,
        width: 1,
      ),
      children: rows,
    );
  }
}
