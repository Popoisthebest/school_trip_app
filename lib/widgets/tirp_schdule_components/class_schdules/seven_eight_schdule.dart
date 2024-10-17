import 'package:flutter/material.dart';
import 'package:school_trip_app/screens/nalita_airport_screens/nalita_airport_screen.dart';
import 'package:school_trip_app/screens/travel_screens/akihabara_detail_screen.dart';
import 'package:school_trip_app/screens/travel_screens/asakusa_detail_screen.dart';
import 'package:school_trip_app/screens/travel_screens/disney_detail_screen.dart';
import 'package:school_trip_app/screens/travel_screens/hakone_sinsa_detail.dart';
import 'package:school_trip_app/screens/travel_screens/incheon_airport.dart';
import 'package:school_trip_app/screens/travel_screens/odaiba_ocean_club_buffet.dart';
import 'package:school_trip_app/screens/travel_screens/shabuyo_detail.dart';
import 'package:school_trip_app/screens/travel_screens/shinjukuhotel_detail_screen.dart';
import 'package:school_trip_app/screens/travel_screens/ui/hakone_pirate_ship.dart';
import 'package:school_trip_app/screens/travel_screens/ui/naritasan_shinshoji.dart';
import 'package:school_trip_app/widgets/tirp_schdule_components/tirp_schdule_list.dart';

class SevenEightSchdule extends StatelessWidget {
  final ValueChanged<String> onClassSelected;

  const SevenEightSchdule({super.key, required this.onClassSelected});

  @override
  Widget build(BuildContext context) {
    List<ScheduleItem> schedules1 = [
      ScheduleItem(
        title: '인천국제공항',
        description: '세계적 공항 · 첨단 시설 · 쇼핑 명소',
        distance: '1250km',
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (builder) => const IncheonAirport(),
          ),
        ),
      ),
      ScheduleItem(
        title: '나리타국제공항',
        description: '일본 공항 · 항공 허브 · 쇼핑 명소',
        distance: '70km',
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (builder) => NalitaAirportScreen(),
          ),
        ),
      ),
      ScheduleItem(
        title: '돈테이 나리타점',
        description: '샤부샤부 뷔페 · 고기 무한리필',
        distance: '15km',
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (builder) => const ShabuyoDetail(),
          ),
        ),
      ),
      ScheduleItem(
        title: '아키하바라',
        description: '관광 명소 · 오타쿠 문화 · 만화',
        distance: '6km',
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (builder) => const AkihabaraDetailScreen(),
          ),
        ),
      ),
      ScheduleItem(
        title: '오다이바 오션뷔페',
        description: '바다 전망 · 해산물 뷔페 · 테라스',
        distance: '15km',
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (builder) => const OdaibaOceanClubBuffet(),
          ),
        ),
      ),
      ScheduleItem(
        title: '신주쿠 워싱턴 호텔',
        description: '도심 호텔 · 공항 접근성 · 시티 뷰',
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (builder) => const ShinjukuhotelDetailScreen(),
          ),
        ),
      ),
    ];

    List<ScheduleItem> schedules2 = [
      ScheduleItem(
        title: '신주쿠 워싱턴 호텔',
        description: '도심 호텔 · 공항 접근성 · 시티 뷰',
        distance: '20km',
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (builder) => const ShinjukuhotelDetailScreen(),
          ),
        ),
      ),
      ScheduleItem(
        title: '디즈니 랜드',
        description: '놀이공원 · 어트랙션 · 퍼레이드',
        distance: '20km',
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (builder) => const DisneyDetailScreen(),
          ),
        ),
      ),
      ScheduleItem(
        title: '신주쿠 워싱턴 호텔',
        description: '비즈니스 호텔 · 도심 숙소',
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (builder) => const ShinjukuhotelDetailScreen(),
          ),
        ),
      ),
    ];

    List<ScheduleItem> schedules3 = [
      ScheduleItem(
        title: '신주쿠 워싱턴 호텔',
        description: '비즈니스 호텔 · 도심 숙소',
        distance: '80km',
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (builder) => const ShinjukuhotelDetailScreen(),
          ),
        ),
      ),
      ScheduleItem(
        title: '하코네 신사',
        description: '삼나무 숲 · 붉은 신사 · 순산 기원',
        distance: '1km',
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (builder) => const HakoneSinsaDetail(),
          ),
        ),
      ),
      ScheduleItem(
        title: '하코네 코한소',
        description: '온천 리조트 · 자연 속 휴식',
        distance: '1km',
        onTap: () => print('두 번째 일정 클릭됨'),
      ),
      ScheduleItem(
        title: '하코네 아시 호수 유람선',
        description: '유람선 투어 · 후지산 전망 · 호수',
        distance: '9km',
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (builder) => const HakonePirateShip(),
          ),
        ),
      ),
      ScheduleItem(
        title: '오와쿠다니 계곡',
        description: '유황 지대 · 활화산 · 검은 달걀',
        distance: '80km',
        onTap: () => print('두 번째 일정 클릭됨'),
      ),
      ScheduleItem(
        title: '아사쿠사 센소지 & 나카미세',
        description: '전통 사원 · 기념품 쇼핑 · 먹거리',
        distance: '25km',
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (builder) => const AsakusaDetailScreen(),
          ),
        ),
      ),
      ScheduleItem(
        title: '가스토 함바 스테이크',
        description: '스테이크 전문점 · 일본 체인 레스토랑',
        distance: '12km',
        onTap: () => print('두 번째 일정 클릭됨'),
      ),
      ScheduleItem(
        title: '신주쿠 워싱턴 호텔',
        description: '도심 호텔 · 공항 접근성 · 시티 뷰',
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (builder) => const ShinjukuhotelDetailScreen(),
          ),
        ),
      ),
    ];

    List<ScheduleItem> schedules4 = [
      ScheduleItem(
        title: '신주쿠 워싱턴 호텔',
        description: '도심 호텔 · 공항 접근성 · 시티 뷰',
        distance: '70km',
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (builder) => const ShinjukuhotelDetailScreen(),
          ),
        ),
      ),
      ScheduleItem(
        title: '신승사',
        description: '가족 건강 기원 · 사찰 · 관광 명소',
        distance: '5km',
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (builder) => const NaritasanShinshoji(),
          ),
        ),
      ),
      ScheduleItem(
        title: '나리타국제공항',
        description: '일본 공항 · 항공 허브 · 쇼핑 명소',
        distance: '1250km',
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (builder) => NalitaAirportScreen(),
          ),
        ),
      ),
      ScheduleItem(
        title: '인천국제공항',
        description: '세계적 공항 · 첨단 시설 · 쇼핑 명소',
        distance: '2km',
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (builder) => const IncheonAirport(),
          ),
        ),
      ),
      ScheduleItem(
        title: '마시란식당',
        description: '현지식 · 한국 전통 요리 · 맛집',
        onTap: () => print('두 번째 일정 클릭됨'),
      ),
    ];

    return Column(
      children: [
        TripScheduleList(
          'Day 1',
          schedules1,
          true,
          onClassSelected: onClassSelected,
        ),
        const SizedBox(height: 15),
        TripScheduleList(
          'Day 2',
          schedules2,
          false,
          onClassSelected: onClassSelected,
        ),
        const SizedBox(height: 15),
        TripScheduleList(
          'Day 3',
          schedules3,
          false,
          onClassSelected: onClassSelected,
        ),
        const SizedBox(height: 15),
        TripScheduleList(
          'Day 4',
          schedules4,
          false,
          onClassSelected: onClassSelected,
        ),
        const SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
