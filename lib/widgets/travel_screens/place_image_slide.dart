import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PlaceImageSlide extends StatefulWidget {
  final String placeName;
  final List<String> imageList;

  const PlaceImageSlide({
    super.key,
    required this.placeName,
    required this.imageList,
  });

  @override
  _PlaceImageSlideState createState() => _PlaceImageSlideState();
}

class _PlaceImageSlideState extends State<PlaceImageSlide> {
  final ValueNotifier<int> currentPage = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 2, // 선의 높이
          color: const Color(0XFF4D9E8A), // 초록색 선
        ),
        Column(
          children: [
            const SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  SvgPicture.asset(
                      'assets/travel_detail_icons/map_pin_icons.svg'),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    widget.placeName,
                    style: const TextStyle(
                      color: Color(0xFF1A1A1A),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Ownglyph okticon',
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Stack(
              children: [
                SizedBox(
                  height: 220,
                  child: PageView.builder(
                    itemCount: widget.imageList.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            widget.imageList[index],
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                    onPageChanged: (index) {
                      currentPage.value = index;
                    },
                  ),
                ),
                Positioned(
                  top: 10,
                  right: 20,
                  child: Container(
                    decoration: ShapeDecoration(
                      color: Colors.black.withOpacity(0.5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 13, vertical: 5),
                      child: ValueListenableBuilder<int>(
                        valueListenable: currentPage,
                        builder: (context, value, child) {
                          return Text(
                            "${value + 1}/${widget.imageList.length}",
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
        Container(
          height: 2, // 선의 높이
          color: const Color(0XFF4D9E8A), // 초록색 선
        ),
      ],
    );
  }
}
