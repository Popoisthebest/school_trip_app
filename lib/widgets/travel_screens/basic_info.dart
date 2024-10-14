import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:school_trip_app/widgets/tirp_schdule_components/map_component/center_map_component.dart';
import 'package:school_trip_app/widgets/travel_screens/store_info.dart';
import 'package:url_launcher/url_launcher.dart';

Widget BasicInfo(
  String location,
  phoneNumber,
  link,
  Widget howToGo,
  bool showPhoneNumber,
  showLink,
  LatLng centerPosition,
  String locationName,
) {
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
            // 여기 이미지 경로 입력해서 넣을 수 있게 수정함.
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
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xff4d9e8a)),
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
                const SizedBox(width: 9),
                Expanded(
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
                )
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
