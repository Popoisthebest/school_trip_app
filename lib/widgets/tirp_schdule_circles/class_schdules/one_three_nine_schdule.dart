import 'package:flutter/material.dart';
import 'package:school_trip_app/widgets/tirp_schdule_circles/tirp_schdule_list.dart';

class OneThreeNineSchdule extends StatelessWidget {
  final ValueChanged<String> onClassSelected;

  const OneThreeNineSchdule({super.key, required this.onClassSelected});

  @override
  Widget build(BuildContext context) {
    List<ScheduleItem> schedules1 = [
      ScheduleItem(
        title: '인천국제공항',
        description: '세계적 공항 · 첨단 시설 · 쇼핑 명소',
        distance: '1250km',
        onTap: () => print('첫 번째 일정 클릭됨'),
      ),
      ScheduleItem(
        title: '나리타국제공항',
        description: '일본 공항 · 항공 허브 · 쇼핑 명소',
        distance: '70km',
        onTap: () => print('첫 번째 일정 클릭됨'),
      ),
      ScheduleItem(
        title: '오다이바 오션뷔페',
        description: '바다 전망 · 해산물 뷔페 · 테라스',
        distance: '15km',
        onTap: () => print('네 번째 일정 클릭됨'),
      ),
      ScheduleItem(
        title: '아키하바라',
        description: '관광 명소 · 오타쿠 문화 · 만화',
        distance: '6km',
        onTap: () => print('세 번째 일정 클릭됨'),
      ),
      ScheduleItem(
        title: '사브요 신주쿠점',
        description: '샤부샤부 뷔페 · 고기 무한리필',
        distance: '1km',
        onTap: () => print('두 번째 일정 클릭됨'),
      ),
      ScheduleItem(
        title: '신주쿠 워싱턴 호텔',
        description: '도심 호텔 · 공항 접근성 · 시티 뷰',
        onTap: () => print('네 번째 일정 클릭됨'),
      ),
    ];

    List<ScheduleItem> schedules2 = [
      ScheduleItem(
        title: '신주쿠 워싱턴 호텔',
        description: '도심 호텔 · 공항 접근성 · 시티 뷰',
        distance: '20km',
        onTap: () => print('첫 번째 일정 클릭됨'),
      ),
      ScheduleItem(
        title: '디즈니 랜드',
        description: '놀이공원 · 어트랙션 · 퍼레이드',
        distance: '20km',
        onTap: () => print('첫 번째 일정 클릭됨'),
      ),
      ScheduleItem(
        title: '신주쿠 워싱턴 호텔',
        description: '비즈니스 호텔 · 도심 숙소',
        onTap: () => print('두 번째 일정 클릭됨'),
      ),
    ];

    List<ScheduleItem> schedules3 = [
      ScheduleItem(
        title: '신주쿠 워싱턴 호텔',
        description: '비즈니스 호텔 · 도심 숙소',
        distance: '80km',
        onTap: () => print('첫 번째 일정 클릭됨'),
      ),
      ScheduleItem(
        title: '하코네 신사',
        description: '삼나무 숲 · 붉은 신사 · 순산 기원',
        distance: '1km',
        onTap: () => print('첫 번째 일정 클릭됨'),
      ),
      ScheduleItem(
        title: '오와쿠다니 계곡',
        description: '유황 지대 · 활화산 · 검은 달걀',
        distance: '9km',
        onTap: () => print('두 번째 일정 클릭됨'),
      ),
      ScheduleItem(
        title: '하코네 아시 호수 유람선',
        description: '유람선 투어 · 후지산 전망 · 호수',
        distance: '1km',
        onTap: () => print('두 번째 일정 클릭됨'),
      ),
      ScheduleItem(
        title: '하코네 코한소',
        description: '온천 리조트 · 자연 속 휴식',
        distance: '1km',
        onTap: () => print('두 번째 일정 클릭됨'),
      ),
      ScheduleItem(
        title: '아사쿠사 센소지 & 나카미세',
        description: '전통 사원 · 기념품 쇼핑 · 먹거리',
        distance: '80km',
        onTap: () => print('두 번째 일정 클릭됨'),
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
        onTap: () => print('첫 번째 일정 클릭됨'),
      ),
    ];

    List<ScheduleItem> schedules4 = [
      ScheduleItem(
        title: '신주쿠 워싱턴 호텔',
        description: '도심 호텔 · 공항 접근성 · 시티 뷰',
        distance: '70km',
        onTap: () => print('첫 번째 일정 클릭됨'),
      ),
      ScheduleItem(
        title: '신승사',
        description: '가족 건강 기원 · 사찰 · 관광 명소',
        distance: '5km',
        onTap: () => print('첫 번째 일정 클릭됨'),
      ),
      ScheduleItem(
        title: '나리타국제공항',
        description: '일본 공항 · 항공 허브 · 쇼핑 명소',
        distance: '1250km',
        onTap: () => print('첫 번째 일정 클릭됨'),
      ),
      ScheduleItem(
        title: '인천국제공항',
        description: '세계적 공항 · 첨단 시설 · 쇼핑 명소',
        distance: '2km',
        onTap: () => print('두 번째 일정 클릭됨'),
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
