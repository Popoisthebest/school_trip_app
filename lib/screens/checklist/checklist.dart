import 'package:flutter/material.dart';
import 'package:school_trip_app/widgets/travel_screens/custom_app_bar.dart';

class Checklist extends StatefulWidget {
  const Checklist({super.key});

  @override
  _ChecklistState createState() => _ChecklistState();
}

class _ChecklistState extends State<Checklist> {
  // 체크박스 상태를 관리할 리스트
  final List<Map<String, dynamic>> checklistItems = [
    {'category': '필수 소지품', 'item': '여권 / 여권사본', 'checked': false},
    {'category': '필수 소지품', 'item': '여행용 캐리어', 'checked': false},
    {'category': '필수 소지품', 'item': '신용카드', 'checked': false},
    {'category': '필수 소지품', 'item': '현지화폐', 'checked': false},
    {'category': '필수 소지품', 'item': '충전기 및 어댑터', 'checked': false},
    {'category': '외류', 'item': '생활복', 'checked': false},
    {'category': '외류', 'item': '여벌 옷', 'checked': false},
    {'category': '외류', 'item': '재킷 / 가디건', 'checked': false},
    {'category': '외류', 'item': '속옷', 'checked': false},
    {'category': '외류', 'item': '신발', 'checked': false},
    {'category': '위생 용품', 'item': '세면도구', 'checked': false},
    {'category': '위생 용품', 'item': '생리용품', 'checked': false},
    {'category': '기타', 'item': '개인의약품', 'checked': false},
    {'category': '기타', 'item': '손목시계', 'checked': false},
    {'category': '기타', 'item': '우비 / 우산', 'checked': false},
    {'category': '기타', 'item': '목 베개', 'checked': false},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildCustomAppBar(context, "체크리스트"),
          Padding(
            padding: const EdgeInsets.only(top: 24, left: 15, bottom: 5),
            child: Text(
              "여행 물품 목록",
              style: const TextStyle(
                fontFamily: "Ownglyph okticon",
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Color(0xff000000),
                height: 26 / 20,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Table(
                columnWidths: const {
                  0: FlexColumnWidth(2), // 구분 (category)
                  1: FlexColumnWidth(4), // 체크 항목 (item)
                  2: FlexColumnWidth(1), // 체크박스
                },
                border: TableBorder.all(
                  color: Colors.grey.shade400,
                  width: 1.5, // 테두리 두께 조정
                ),
                children: _buildTableRows(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // 테이블의 행들을 빌드하는 함수
  List<TableRow> _buildTableRows() {
    List<TableRow> rows = [];

    // 헤더
    rows.add(
      TableRow(
        decoration: const BoxDecoration(
          color: Color(0xFF5EA795),
        ),
        children: const [
          Padding(
            padding: EdgeInsets.all(12.0), // 패딩 추가
            child: Text(
              '구분',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'Ownglyph okticon',
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(12.0), // 패딩 추가
            child: Text(
              '체크항목',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'Ownglyph okticon',
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(12.0), // 패딩 추가
            child: Text(
              '체크',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'Ownglyph okticon',
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );

    String? currentCategory;

    for (int i = 0; i < checklistItems.length; i++) {
      final item = checklistItems[i];

      // 카테고리가 바뀔 때마다 구분을 `Container`처럼 테이블의 왼쪽 열에 추가
      bool showCategory = (item['category'] != currentCategory);
      if (showCategory) {
        currentCategory = item['category'];
      }

      rows.add(
        TableRow(
          decoration: BoxDecoration(
            color: item['checked']
                ? const Color(0xFFDBECE8)
                : Colors.transparent, // 체크 시 배경색 변경
          ),
          children: [
            // 구분 (카테고리) - 같은 카테고리인 항목에 대해 하나의 셀로 처리
            showCategory
                ? Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      color: const Color(0xFF5EA795),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          currentCategory!,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Ownglyph okticon',
                          ),
                        ),
                      ),
                    ),
                  )
                : const SizedBox.shrink(), // 같은 구분이면 빈칸 처리
            // 체크 항목명
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                item['item'],
                style: TextStyle(
                  fontFamily: 'Ownglyph okticon',
                  decoration: item['checked']
                      ? TextDecoration.lineThrough
                      : TextDecoration.none, // 체크 시 중간선
                  fontWeight: FontWeight.w400, // 텍스트 두께 추가
                ),
              ),
            ),
            // 체크박스
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Checkbox(
                value: item['checked'],
                onChanged: (bool? value) {
                  setState(() {
                    checklistItems[i]['checked'] = value ?? false;
                  });
                },
                activeColor: const Color(0xFF5EA795),
                checkColor: const Color(0xFFDBECE8),
              ),
            ),
          ],
        ),
      );
    }

    return rows;
  }
}
