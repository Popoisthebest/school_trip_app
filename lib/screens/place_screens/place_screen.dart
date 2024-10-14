import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:school_trip_app/screens/travel_screens/odaiba_detail_screen.dart';
import 'package:school_trip_app/widgets/tirp_schdule_components/map_component/map_component.dart';

class PlaceDetail {
  final String name;
  final String description;
  final String images;
  final int starCount; // 별 개수 정보를 추가
  final Function onTap;

  PlaceDetail({
    required this.onTap,
    required this.images,
    required this.name,
    required this.description,
    required this.starCount, // 별 개수 매개변수 추가
  });
}

class PlaceScreen extends StatefulWidget {
  const PlaceScreen({super.key});

  @override
  State<PlaceScreen> createState() => _PlaceScreenState();
}

class _PlaceScreenState extends State<PlaceScreen> {
  late GoogleMapController _mapController;
  final List<PlaceDetail> placeDetails = [
    PlaceDetail(
      onTap: () {},
      name: '디즈니랜드',
      description:
          '디즈니랜드 도쿄는 일본 최초의 디즈니 테마파크로, 다양한 디즈니 캐릭터와 놀이기구, 공연을 즐길 수 있는 인기 관광지입니다.',
      images: 'assets/place_screen_images/disneyland.png',
      starCount: 5, // 별 개수 설정
    ),
    PlaceDetail(
      onTap: () {},
      name: '아키하바라',
      description:
          '연간 수백만 명 이상의 여행객이 방문하는 곳으로 거리 곳곳에 게임관련 매장과 오락실, 코스프레 샵들이 들어서 있어 시간 가는 줄도 모른체 즐길 수 있습니다.',
      images: 'assets/place_screen_images/akiabara.png',
      starCount: 5, // 별 개수 설정
    ),
    PlaceDetail(
      onTap: () {},
      name: '오다이바',
      description:
          '본래 도쿄 내륙 지역을 방어하기 위한 군사 목적으로 조성된 인공섬이었으나, 지금은 즐길 거리가 많은 해안가 관고아 특구로 유명한 곳입니다.',
      images: 'assets/place_screen_images/odiaba.png',
      starCount: 3, // 별 개수 설정
    ),
    PlaceDetail(
      onTap: () {},
      name: '하코네',
      description:
          '온천 시설을 갖춘 숙소가 모인 대표적인 하코네 명소입니다. 역사를 중심으로 특산품과 기념품을 판매하는 상점가가 있어 온천 마을 특유의 분위기를 즐길 수 있습니다.',
      images: 'assets/place_screen_images/hakone.png',
      starCount: 5, // 별 개수 설정
    ),
    PlaceDetail(
      onTap: () {},
      name: '아사쿠사',
      description:
          '도쿄를 대표하는 사찰 센소지를 중심으로 조성된 번화가로, 우리나라의 인사동처럼 고유한 전통 문화를 많이 간직한 곳이라 관광객들의 발길이 끊이지 않는 곳입니다.',
      images: 'assets/place_screen_images/asacosa.png',
      starCount: 4, // 별 개수 설정
    ),
  ];

  final LatLng initialPosition = const LatLng(35.6329, 139.8804); // 디즈니 랜드
  final List<LatLng> locations = [
    const LatLng(35.6329, 139.8804), // 디즈니 랜드
    const LatLng(35.7023, 139.7745), // 아키하바라
    const LatLng(35.627222, 139.775556), // 오다이바
    const LatLng(35.480613, 139.045159), // 하코네
    const LatLng(35.711748, 139.786896), // 아사쿠사
  ];
  final List<String> locationNames = [
    '디즈니랜드',
    '아키하바라',
    '오다이바',
    '하코네',
    '아사쿠사',
  ];

  void _onMapCreated(GoogleMapController controller) {
    _mapController = controller;
  }

  void _moveToLocation(int index) {
    _mapController.animateCamera(
      CameraUpdate.newLatLng(locations[index]),
    );
    Future.delayed(const Duration(milliseconds: 500), () {
      _mapController.showMarkerInfoWindow(MarkerId('location_$index'));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff4D9E8A),
      appBar: AppBar(
        backgroundColor: const Color(0xff4D9E8A),
        flexibleSpace: const Padding(
          padding: EdgeInsets.only(left: 29.0, bottom: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '도쿄 여행',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Ownglyph okticon',
                  fontWeight: FontWeight.w700,
                  height: 1.0,
                ),
              ),
              Text(
                '2024.10.22 ~ 10.25',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Ownglyph okticon',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 1.0,
            color: Colors.white,
          ),
          // Padding(
          //   padding: const EdgeInsets.symmetric(vertical: 14.0),
          //   child: SingleChildScrollView(
          //     scrollDirection: Axis.horizontal,
          //     child: Row(
          //       children: [
          //         const SizedBox(width: 10),
          //         _buildCategoryButton('음식점'),
          //         const SizedBox(width: 10),
          //         _buildCategoryButton('공중화장실'),
          //         const SizedBox(width: 10),
          //         _buildCategoryButton('카페'),
          //         const SizedBox(width: 10),
          //         _buildCategoryButton('응급진료'),
          //         const SizedBox(width: 10),
          //         _buildCategoryButton('편의점'),
          //         const SizedBox(width: 10),
          //         _buildCategoryButton('은행'),
          //         const SizedBox(width: 10),
          //         _buildCategoryButton('가볼만한곳'),
          //         const SizedBox(width: 10),
          //       ],
          //     ),
          //   ),
          // ),

          // 중간 빨간색 박스를 GoogleMapComponent로 대체
          Expanded(
            child: Stack(
              children: [
                GoogleMapComponent(
                  initialPosition: initialPosition,
                  locations: locations,
                  locationNames: locationNames,
                  onMapCreated: _onMapCreated,
                ),

                // 하단 고정된 컴포넌트 (180px 고정 높이)
                Positioned(
                  bottom: 10, // 하단에서 10px 위로 띄움
                  left: 0,
                  right: 0,
                  child: SizedBox(
                    height: 180,
                    child: PageView.builder(
                      itemCount: placeDetails.length,
                      onPageChanged: (index) {
                        _moveToLocation(index);
                      },
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Container(
                            width: 343,
                            height: 180,
                            decoration: BoxDecoration(
                              color: const Color(0xFF4D9E8A),
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: const Color(0xFF4D9E8A),
                                width: 2,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                      bottomLeft: Radius.circular(10),
                                      topLeft: Radius.circular(10)),
                                  child: Image.asset(
                                    placeDetails[index].images,
                                    width: 120, // 이미지 넓이 설정
                                    height: 180, // 이미지 높이 설정
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    color: Colors.white,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 9.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            placeDetails[index].name,
                                            style: const TextStyle(
                                              color: Color(0xFF1A1A1A),
                                              fontSize: 20,
                                              fontFamily: 'Ownglyph okticon',
                                              fontWeight: FontWeight.w700,
                                              height: 0,
                                            ),
                                          ),
                                          Text(
                                            placeDetails[index].description,
                                            style: const TextStyle(
                                              color: Color(0xBF1A1A1A),
                                              fontSize: 12,
                                              fontFamily: 'Ownglyph okticon',
                                              fontWeight: FontWeight.w700,
                                              height: 0,
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              ...List.generate(
                                                placeDetails[index].starCount,
                                                (starIndex) => Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 0),
                                                  child: SvgPicture.asset(
                                                    'assets/place_screen_images/star_icon.svg',
                                                    width: 17,
                                                    height: 17,
                                                  ),
                                                ),
                                              ),
                                              ...List.generate(
                                                5 -
                                                    placeDetails[index]
                                                        .starCount,
                                                (noStarIndex) => Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 0),
                                                  child: SvgPicture.asset(
                                                    'assets/place_screen_images/no_star_icon.svg',
                                                    width: 17,
                                                    height: 17,
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                '(${placeDetails[index].starCount}.0)',
                                                style: const TextStyle(
                                                  fontSize: 16,
                                                  color: Color(0xFF1A1A1A),
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    placeDetails[index].onTap;
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 13.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        SvgPicture.asset(
                                            'assets/place_screen_images/way_icon.svg'),
                                        const SizedBox(height: 4.5),
                                        const Text(
                                          '상세\n페이지',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontFamily: 'Ownglyph okticon',
                                            fontWeight: FontWeight.w400,
                                            height: 0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryButton(String label) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
      ),
      child: Center(
        child: Text(
          label,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 13,
            fontWeight: FontWeight.w400,
            fontFamily: 'Ownglyph okticon',
          ),
        ),
      ),
    );
  }
}
