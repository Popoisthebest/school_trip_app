import 'package:flutter/material.dart';

Widget Setting(
  String content,
  extra_content,
  content1,
  extra_content1,
  content2,
  extra_content2,
  BuildContext context,
  List<String> imageList,
) {
  return Container(
    decoration: const BoxDecoration(
      border: Border(
        top: BorderSide( // 위쪽 보더만 적용
          color: Color(0xFFE0E0E0),
          width: 2,
        ),
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.only(
        left: 10,
        top: 50,
        right: 10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (content.isNotEmpty) 
            Text(
              content,
              style: const TextStyle(
                fontFamily: "Ownglyph okticon",
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Color(0xff1a1a1a),
              ),
              textAlign: TextAlign.left,
            ),
          if (extra_content != null && extra_content.isNotEmpty)
            Text(
              extra_content,
              style: const TextStyle(
                fontFamily: "Ownglyph okticon",
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xff000000),
              ),
              textAlign: TextAlign.left,
            ),
          const SizedBox(
            height: 30,
          ),
          if (content1.isNotEmpty)
            Text(
              content1,
              style: const TextStyle(
                fontFamily: "Ownglyph okticon",
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Color(0xff1a1a1a),
              ),
              textAlign: TextAlign.left,
            ),
          if (extra_content1 != null && extra_content1.isNotEmpty)
            Text(
              extra_content1,
              style: const TextStyle(
                fontFamily: "Ownglyph okticon",
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xff000000),
              ),
              textAlign: TextAlign.left,
            ),
          const SizedBox(
            height: 30,
          ),
          if (content2.isNotEmpty)
            Text(
              content2,
              style: const TextStyle(
                fontFamily: "Ownglyph okticon",
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Color(0xff1a1a1a),
              ),
              textAlign: TextAlign.left,
            ),
          if (extra_content2 != null && extra_content2.isNotEmpty)
            Text(
              extra_content2,
              style: const TextStyle(
                fontFamily: "Ownglyph okticon",
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xff000000),
              ),
              textAlign: TextAlign.left,
            ),
          const SizedBox(
            height: 30,
          ),
          
          // 사진이 한 장일 때와 여러 장일 때를 구분하여 처리
          imageList.length == 1
            ? Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10), // 이미지에 둥근 테두리
                  child: Image.asset(
                    imageList[0], // 한 장일 때 중앙에 배치
                    width: MediaQuery.of(context).size.width * 0.9, // 화면 너비의 90%로 설정
                    height: 220, // 이미지 높이
                    fit: BoxFit.cover,
                  ),
                ),
              )
            : SingleChildScrollView(
                scrollDirection: Axis.horizontal, // 가로로 스크롤 가능하게 설정
                child: Row(
                  children: imageList.map((imagePath) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10), // 이미지에 둥근 테두리
                        child: Image.asset(
                          imagePath,
                          width: MediaQuery.of(context).size.width * 0.9, // 화면 너비의 90%로 설정
                          height: 220, // 이미지 높이
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
          const SizedBox(height: 50),
        ],
      ),
    ),
  );
}
