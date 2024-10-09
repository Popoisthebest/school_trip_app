import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // 상단에 고정될 커스텀 AppBar
          Container(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).padding.top, // 상태 표시줄 높이만큼 패딩 추가
            ),
            color: Colors.blue, // 상단 바 배경색
            height: 100, // 상태 표시줄 포함한 상단 바 높이
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(Icons.menu, color: Colors.white),
                  onPressed: () {
                    // 메뉴 버튼 동작
                  },
                ),
                const Text(
                  'Custom AppBar',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                IconButton(
                  icon: const Icon(Icons.search, color: Colors.white),
                  onPressed: () {
                    // 검색 버튼 동작
                  },
                ),
              ],
            ),
          ),
          // 아래 스크롤 가능한 콘텐츠 영역
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: List.generate(
                  50,
                  (index) => ListTile(
                    title: Text('Item $index'),
                  ),
                ), // 50개의 아이템을 가진 리스트
              ),
            ),
          ),
        ],
      ),
    );
  }
}
