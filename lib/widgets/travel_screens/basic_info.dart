import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:school_trip_app/widgets/tirp_schdule_components/map_component/center_map_component.dart';
import 'package:url_launcher/url_launcher.dart';

class BasicInfo extends StatelessWidget {
  final String location;
  final String phoneNumber;
  final String link;
  final Widget howToGo;
  final bool showPhoneNumber;
  final bool showLink;
  final LatLng centerPosition;
  final String locationName;

  const BasicInfo({
    super.key,
    required this.location,
    required this.phoneNumber,
    required this.link,
    required this.howToGo,
    required this.showPhoneNumber,
    required this.showLink,
    required this.centerPosition,
    required this.locationName,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  Text(
                    '기본정보',
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
                height: 15,
              ),
              SizedBox(
                  width: double.infinity,
                  height: 200,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: CenteredMapComponent(
                        centerPosition: centerPosition,
                        locationName: locationName),
                  )),
              const SizedBox(
                height: 15,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xff4d9e8a),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 15.0),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SvgPicture.asset(
                              'assets/travel_detail_icons/crosshair_icons.svg'),
                          const SizedBox(
                            width: 10,
                          ),
                          Flexible(
                            child: Text(
                              location,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                                fontFamily: 'Ownglyph okticon',
                              ),
                            ),
                          )
                        ],
                      ),
                      if (showPhoneNumber)
                        Column(
                          children: [
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                SvgPicture.asset(
                                    'assets/travel_detail_icons/phone_icon.svg'),
                                const SizedBox(
                                  width: 10,
                                ),
                                Flexible(
                                  child: Text(
                                    phoneNumber,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontFamily: 'Ownglyph okticon',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      if (showLink)
                        Column(
                          children: [
                            const SizedBox(height: 10),
                            GestureDetector(
                              onTap: () {
                                launchUrl(Uri.parse(link));
                              },
                              child: Row(
                                children: [
                                  SvgPicture.asset(
                                      'assets/travel_detail_icons/link_icon.svg'),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Flexible(
                                    child: Text(
                                      link,
                                      style: const TextStyle(
                                        color: Color(0xFFC2E4FF),
                                        fontSize: 16,
                                        fontFamily: 'Ownglyph okticon',
                                        fontWeight: FontWeight.w400,
                                        decoration: TextDecoration.underline,
                                        decorationColor: Color(0xffC2E4FF),
                                        height: 0,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        askPopUp(context);
                      },
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0xff4d9e8a),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Center(
                          child: Text(
                            '현지에서 물어보기',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Ownglyph okticon',
                              color: Color(0xff4d9e8a),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 9),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        // 길찾기 기능 추가 예정
                        print('길찾기 버튼 클릭');
                      },
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: const Color(0xff4d9e8a),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Center(
                          child: Text(
                            '길찾기',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Ownglyph okticon',
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  Text(
                    '가는법',
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
                height: 10,
              ),
              howToGo,
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ],
    );
  }

  void askPopUp(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          child: SizedBox(
            height: 400,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 36),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        '현지에서 길묻기',
                        style: TextStyle(
                          color: Color(0xBF1A1A1A),
                          fontSize: 16,
                          fontFamily: 'Ownglyph okticon',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: const Icon(Icons.close),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
                  child: Text(
                    '(場所)に行くにはどうやって行けばいいですか？',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 32,
                      fontFamily: 'Ownglyph okticon',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 11.0),
                  child: Container(
                    color: const Color(0xff1a1a1a40),
                    height: 1,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 20.0, horizontal: 16),
                  child: Text(
                    '(장소)에 가려면 어떻게 가야하나요?',
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.5),
                      fontSize: 20,
                      fontFamily: 'Ownglyph okticon',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
