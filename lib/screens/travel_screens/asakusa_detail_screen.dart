import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:school_trip_app/widgets/travel_screens/basic_info.dart';
import 'package:school_trip_app/widgets/travel_screens/custom_app_bar.dart';
import 'package:school_trip_app/widgets/travel_screens/main_store.dart';
import 'package:school_trip_app/widgets/travel_screens/place_discription.dart';
import 'package:school_trip_app/widgets/travel_screens/place_image_slide.dart';
import 'package:school_trip_app/widgets/travel_screens/place_name.dart';
import 'package:school_trip_app/widgets/travel_screens/star_and_heart.dart';
import 'package:school_trip_app/widgets/travel_screens/store_info.dart';

List<String> placeImageList = [
  'assets/travel_detail_images/asakusa_images/141a0073ef55ef21c3b78b0e3d4345f9.png',
  'assets/travel_detail_images/asakusa_images/a1cf707ba418a4ce4c3545f8889e8ff9.png',
  'assets/travel_detail_images/asakusa_images/a4da7659f5ea5855249166e2036c0304.png',
  'assets/travel_detail_images/asakusa_images/a54f3f6bc29bf5b47ad3cc342be3db8e.png',
];

List<Map<String, dynamic>> storeList = [
  {
    'stimagePath':
        'assets/travel_detail_images/asakusa_images/762afc6eb1c28fc0c9f5939ee8be7713.png',
    'stname': '아사쿠사 실크 푸딩',
    'stintroduce': '여러 가지 맛과 쫄깃한 식감의 푸딩이 유명한 디저트 숍',
    'onTap': () {
      print('디즈니랜드 인포메이션');
    }
  },
  {
    'stimagePath':
        'assets/travel_detail_images/asakusa_images/6d163c74c4898c7d183fccd603c445c9.png',
    'stname': '아사쿠사 초친 모나카',
    'stintroduce': '달콤한 맛의 모나카로 유명한 과자 전문점',
    'onTap': () {
      print('디즈니랜드 판타지 랜드');
    }
  },
  {
    'stimagePath':
        'assets/travel_detail_images/asakusa_images/64fe6cf41a262d4ade79227607ca22e6.png',
    'stname': '아사쿠사 키비당고 아즈마',
    'stintroduce': '콩가루를 묻힌 인절미 당고로 유명한 모찌 전문점',
    'onTap': () {
      print('디즈니랜드 판타지 랜드');
    }
  },
];

class AsakusaDetailScreen extends StatelessWidget {
  const AsakusaDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          buildCustomAppBar(context, ''),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  PlaceName("아사쿠사", "浅草"),
                  StarAndHeart("3.0점", 3, "1.7만명"),
                  const SizedBox(
                    height: 15,
                  ),
                  PlaceImageSlide(
                      placeName: '아키하바라', imageList: placeImageList),
                  PlaceDiscription(
                    "",
                    'assets/travel_detail_images/asakusa_images/cefec402e8ed292cfa41fe23a0ffc564.png',
                    "에도 시대의 분위기를 간직한\n옛스러운 지역",
                    "도쿄를 대표하는 사찰 센소지를 중심으로 조성된 번화가로, 우리나라의 인사동처럼 고유한 전통 문화를 많이 간직한 곳이라 관광객들의 발길이 끊이지 않는 곳이다. 과거 에도 막부 시대부터 이어져 온 일본 특유의 옛스러운 분위기를 경험할 수 있고, 민간 신앙으로부터 시작된 다양한 민속 축제와 옛 건물을 개조한 상점 등 다양한 볼거리와 즐길 거리가 많다.",
                    true,
                  ),
                  PlaceDiscription(
                    "주요 명소",
                    'assets/travel_detail_images/asakusa_images/93ee993350934992ec68bfcc6794da98.png',
                    "센소지",
                    "야간 시에 점등되는 조명이 유명한 도쿄 최대 규모 사찰로 일본 성관음종(聖観音宗)의 본산이다. 센소지는 628년 어부 형제가 바다 또는 스미다 강에서 그물에 걸려 올라온 관세음보살상을 모시기 위해 세운 절이라고 하지만 현재 건물들은 전형적인 에도 시대 사찰 건물이다. 일본의 간토 대지진과 태평양 전쟁을 거치면서 타거나 무너졌으며, 우리가 보는 절은 1960년대에 재건한 것이다. 본당은 콘크리트로 재건되었고, 유명세에 비하면 그다지 문화재적인 가치가 높지는 않다.",
                    false,
                  ),
                  PlaceDiscription(
                    "",
                    'assets/travel_detail_images/asakusa_images/6b7c89d6928a3aef848c3430c0180f87.png',
                    "나카미세 도리",
                    "카미나리몬에서 센소지까지 이어지는 거리에 조성된 상점가로 상점의 대부분이 가족이 대를 이어 운영하고 있으며 서로 시선을 끌기 위해 90여개의 상점에서 상인들이 적극적으로 홍보를 하고 있다.",
                    true,
                  ),
                  PlaceDiscription(
                    "",
                    'assets/travel_detail_images/asakusa_images/ed3f8610ca953ec6a6a0849895b672bf.png',
                    "카미나리몬",
                    "센소지로 통하는 입구 대문이다. 정식 명칭은 후라이진몬으로, 가미나리몬’이라고 쓰여진 정문 글씨의 반대쪽 면에 후라이진몬이란 글씨가 새겨져 있다. 원래의 가미나리몬은 1865년 화재로 소실되었고 현재의 문은 센소지와 마찬가지로 철근 콘크리트로 재건한 것이다. 중앙에는 2020년에 제작한 제등이 달려있으며 직경 3.3m, 높이 3.9m, 무게 700kg에 달한다.",
                    true,
                  ),
                  PlaceDiscription(
                    "",
                    'assets/travel_detail_images/asakusa_images/f4b62743313a3502c3eeec5d1a0d4ce3.png',
                    "아사쿠사 신사",
                    "상상 속의 동물들을 볼 수 있는 신성한 장소 아사쿠사 신사는 막부 시대에 세워진 신사로, 센소지 뒤편에 위치하고 있다. 1951년에 일본의 국가 중요문화재로 지정되었으며, 신사 곳곳에는 사자, 봉황, 비룡 등 영험함을 상징하는 상상 속의 동물들이 자리하고 있어 신성한 분위기를 느낄 수 있다. 아사쿠사 신사에는 매월 다양한 축제가 열리는데 그 중에서도 도쿄 3대 축제 중 하나인 ‘산자마츠리(三社祭)’가 유명하다. 지역 기업과 주민들에게 행운을 기원하는 축제로, 이 축제를 보기 위해 매년 약 200만 명의 사람들이 방문한다고 전해져 있다. 신사 내부는 촬영이 제한된다.",
                    true,
                  ),
                  PlaceDiscription(
                    "",
                    'assets/travel_detail_images/asakusa_images/3156d3c70bdd4d3686c06825c25136da.png',
                    "아사쿠사바시 가죽시장",
                    "",
                    true,
                  ),
                  PlaceDiscription(
                    "가죽 제품 판매점과 가죽 공방이 있는 거리",
                    'assets/travel_detail_images/asakusa_images/2067114d66127ce8ec2b341c8ea57c08.png',
                    "각종 가죽 공예품의 천국",
                    "아사쿠사 지역의 아사쿠사바시 역 일대에는 다양한 가죽 공방과 매장들이 있어 ‘가죽거리’ 또는 ‘가죽시장’이라고 불린다. 이 거리에서는 유명 가죽 브랜드 체인과 가죽 상점들 뿐만 아니라, 전통 있는 가죽 공방들도 많아 가죽 공예를 체험해 볼 수 있다.",
                    false,
                  ),
                  MainStore(storeList, false, false),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30.0),
                    child: Container(
                      width: 375,
                      height: 30,
                      decoration: const BoxDecoration(color: Color(0xFFE0E0E0)),
                    ),
                  ),
                  const BasicInfo(
                    location: '〒11﻿1-0032 Taito, Tokyo',
                    phoneNumber: '',
                    link: '',
                    howToGo: Row(
                      children: [
                        Text(
                          '아사쿠사 선 아사쿠사 역 1번 출구에서 도보 1분',
                          style: TextStyle(
                            color: Color(0xBF1A1A1A),
                            fontSize: 14,
                            fontFamily: 'Ownglyph okticon',
                            fontWeight: FontWeight.w400,
                            height: 0.10,
                          ),
                        ),
                      ],
                    ),
                    showPhoneNumber: false,
                    showLink: false,
                    centerPosition: LatLng(35.711748, 139.786896),
                    locationName: '아사쿠사',
                  ),
                  StoreInfo('24시간', '', const SizedBox(), '배틀트립 촬영 장소', false,
                      false, true)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
