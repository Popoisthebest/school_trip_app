import 'package:flutter/material.dart';
import 'package:school_trip_app/widgets/tirp_schdule_components/custom_paint.dart';
import 'package:school_trip_app/widgets/tirp_schdule_components/day_show.dart';
import 'package:school_trip_app/widgets/tirp_schdule_components/num_circle.dart';
import 'package:school_trip_app/widgets/tirp_schdule_components/trip_schdule_cards.dart';

// Trip Schedule List 위젯
Widget TripScheduleList(
    String day,
    List<ScheduleItem> schedules, // 일정 리스트
    bool showDropMenu, // 드롭다운 메뉴를 보여줄지 여부
    {required ValueChanged<String> onClassSelected}) {
  // 일정의 개수에 따라 컨테이너 높이를 계산하는 함수
  double calculateContainerHeight(int scheduleCount) {
    const double baseHeight = 75; // 기본 일정 하나의 높이
    const double extraHeightPerItem = 75; // 추가 일정당 높이
    return baseHeight + (scheduleCount - 1) * extraHeightPerItem;
  }

  return Stack(
    children: [
      // 처음 컨테이너의 높이를 동적으로 설정
      Padding(
        padding: const EdgeInsets.only(top: 24, left: 23),
        child: Container(
          width: 3,
          height: calculateContainerHeight(schedules.length),
          decoration: BoxDecoration(
            color: const Color(0xffEEEEEE),
            borderRadius: BorderRadius.circular(50),
          ),
        ),
      ),
      Column(
        children: [
          // 요일과 드롭다운 메뉴 표시
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DayShow(day), // 요일을 표시하는 위젯
            ],
          ),
          const SizedBox(height: 21),

          // 일정 리스트를 동적으로 생성
          Column(
            children: schedules.asMap().entries.map((entry) {
              int index = entry.key;
              ScheduleItem schedule = entry.value;

              return Column(
                children: [
                  // 일정 번호와 카드
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 10.0,
                          right: 19,
                        ),
                        child: NumCircle(index + 1), // 일정 번호를 보여주는 원형 위젯
                      ),
                      Expanded(
                        child: SchduleCard(
                          schedule.title,
                          schedule.description,
                          onTap: () {
                            schedule.onTap();
                          },
                        ),
                      ),
                    ],
                  ),
                  // 일정 간의 화살표 표시 (마지막 일정 이후에는 표시하지 않음)
                  if (schedule.distance != null && index < schedules.length - 1)
                    Row(
                      children: [ArrowCustomPaint(schedule.distance!)],
                    )
                ],
              );
            }).toList(),
          ),
        ],
      ),
    ],
  );
}

// 일정 데이터를 위한 클래스
class ScheduleItem {
  final String title; // 일정 제목
  final String description; // 일정 설명
  final String? distance; // 일정 간 거리
  final Function onTap; // 일정 클릭 시 실행될 함수

  ScheduleItem({
    required this.title,
    required this.description,
    this.distance,
    required this.onTap,
  });
}
