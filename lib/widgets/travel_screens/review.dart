import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Review extends StatefulWidget {
  final String reviewContext;
  final List<String> imageList;

  const Review({
    super.key,
    required this.reviewContext,
    required this.imageList,
  });

  @override
  _ReviewState createState() => _ReviewState();
}

class _ReviewState extends State<Review> {
  bool showAllImages = false; // 모든 이미지를 표시할지 여부를 추적하는 상태 변수 추가

  @override
  Widget build(BuildContext context) {
    // 추가 이미지 갯수 계산. 이미지가 3개 초과일 경우에만 추가 이미지 개수를 계산합니다.
    int extraImagesCount =
        widget.imageList.length > 3 ? widget.imageList.length - 3 : 0;
    // 표시할 이미지 리스트 결정. showAllImages가 true일 경우 전체 이미지를, 그렇지 않으면 첫 3개만 표시합니다.
    List<String> displayedImages =
        showAllImages ? widget.imageList : widget.imageList.take(3).toList();

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              const Row(
                children: [
                  Text(
                    '리뷰',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Ownglyph okticon',
                      color: Color(0xFF1A1A1A),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(
                          'assets/travel_detail_icons/profil_icon.svg'),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        '오세철님의 리뷰',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Ownglyph okticon',
                          color: Color(0xFF1A1A1A),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(
                          'assets/travel_detail_icons/three_dots_vertical_icons.svg'),
                      const SizedBox(
                        width: 10,
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Flexible(
                      child: Text(
                    widget.reviewContext,
                    style: const TextStyle(
                      fontFamily: "Ownglyph okticon",
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.left,
                  )),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              // 이미지 3개까지는 Row로 표시
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: SizedBox(
            height: 257,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: ClipRect(
                    child: Image.asset(
                      displayedImages[0],
                      height: 257,
                      fit: BoxFit.cover, // 이미지 높이에 맞춰 가로를 잘라내도록 설정
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Image.asset(
                        displayedImages[1],
                        height: 92,
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                      const SizedBox(height: 10),
                      Stack(
                        children: [
                          Image.asset(
                            displayedImages[2],
                            height: 155,
                            fit: BoxFit.cover,
                            width: double.infinity,
                          ),
                          if (extraImagesCount > 0 && !showAllImages)
                            Container(
                              height: 155,
                              color: Colors.black.withOpacity(0.5),
                              child: Center(
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      showAllImages = true;
                                    });
                                  },
                                  child: Text(
                                    '+ $extraImagesCount',
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Ownglyph okticon',
                                      color: Colors.white.withOpacity(0.75),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
// 나머지 이미지를 Column으로 표시
        if (showAllImages && widget.imageList.length > 3)
          Column(
            children: [
              for (int i = 3; i < displayedImages.length; i++)
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Image.asset(
                    displayedImages[i],
                    fit: BoxFit.contain,
                  ),
                ),
            ],
          )
      ],
    );
  }
}
