import 'package:flutter/material.dart';
import 'package:school_trip_app/widgets/travel_screens/disney_componets/detail_text.dart';

Widget Tip() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          '꿀팁',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontFamily: 'Ownglyph okticon',
            fontWeight: FontWeight.w700,
            height: 0,
          ),
        ),
        const SizedBox(height: 10),
        DetailText(
          '디즈니랜드의 놀이기구는 대기시간이 매우 길기 때문에 직접 줄을 서서 기다리는 것 보다 디즈니랜드 공식 어플리케이션을 사전에 다운로드 해서 대기 현황을 온라인으로 실시간으로 확인하는 것이 좋다.',
          false,
        ),
        const SizedBox(height: 10),
        DetailText(
          '디즈니랜드에는 팝콘을 판매하는 가게가 매우 많은데 가게마다 맛이 모두 다르다. 디즈니랜드의 팝콘은 Popcorn wagon(in front of Pooh’s Hunny Hunt)가게에 있는 꿀 팝콘이 달달하면서 매우 중독적인 맛을 가지고 있다. 그리고 Popcorn wagon(next to Castle Carrousel) 디즈니성 뒷문 덤보 근처에서 판매하는 밀크티 팝콘도 맛있다. 꼭 먹어보길. 마지막으로 Popcorn wagon(in front fo Cafe Orleans) 정글 크루즈 근처에 있는 말차 화이트 초콜릿 팝콘 역시 추천한다.',
          false,
        ),
        const SizedBox(height: 10),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              '• ', // 점을 추가합니다.
              style: TextStyle(
                height: 0.9,
                fontSize: 18,
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '도쿄 디즈니랜드에서는 ‘디즈니 하모니 인 컬러’라고 하는 퍼레이드를 진행하고 있는데 디즈니 하모니 인 컬러에 대한 꿀팁들을 알려주고자 한다. 디즈니 하모니 인 컬러의 전체 퍼레이드 시간은 45분이라 공지되어있지만, 모두 도는데 45분이 걸리는 것이기 때문에 실질적으로 내 눈 앞에 보이는 시간은 18분 남짓이다. 기획의 의도를 보면서 퍼레이드를 감상하면 또 다른 의미로 다가올 것이다.',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Ownglyph okticon',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  DetailText(
                    '햇빛과의 전쟁: 낮퍼레이드는 자리전쟁 뿐만 아니라 햇빛과도 전쟁을 해야 한다. 디즈니랜드는 그늘이 거의 없고 햇빛이 매우 강하기 때문에 선글라스, 양산, 선크림, 챙모자, 팔토시 등 과하다 싶을 정도로 준비하는 것이 좋습니다.',
                    true,
                  ),
                  DetailText(
                    '낮 퍼레이드의 명당은 다음 사진을 참고 바라며 노란색은 건물 앞이라 그늘이 많고 파란색은 코너길에서 줄줄이 따라오는 플로트카를 설레는 마음으로 볼 수 있다. 하얀동그라미는 퍼레이드의 시始 와 종終 구역입니다.',
                    true,
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          child: Image.asset(
              'assets/travel_detail_images/disneyland_images/disney_simple_map_image.png'),
        ),
        const SizedBox(height: 10),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              '• ', // 점을 추가합니다.
              style: TextStyle(
                height: 0.9,
                fontSize: 18,
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '진행방향은 다음과 같다.',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Ownglyph okticon',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  DetailText(
                    '왼쪽(인코스) : 상대적으로 그늘이 많음, 진행케스터가 왼쪽에서 따라붙음, 구피, 데일, 도날드 볼 수 있음',
                    true,
                  ),
                  DetailText(
                    '오른쪽(아웃코스) : 신데렐라 성을 배경으로 사진 및 퍼레이드를 즐길 수 있음, 미키&미니 정면샷을 찍을 수 있음, 플루토, 칩, 데이지를 볼 수 있음',
                    true,
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        DetailText(
          '리액션을 받기 위해서는 1열 사수 필수!, 열광적으로 모션을 해야 하고, 좋아하는 캐릭터의 굿즈를 사고 열심히 흔들면 정말 기억에 남는 리액션을 받을 수 있다.',
          false,
        ),
        const SizedBox(height: 10),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              '• ', // 점을 추가합니다.
              style: TextStyle(
                height: 0.9,
                fontSize: 18,
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '퍼레이드 캐릭터 등장 순서는 다음과 같다.',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Ownglyph okticon',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  DetailText('스타트 댄서', true),
                  DetailText('부흥회 박수치며 팅커벨 선두', true),
                  DetailText('백설공주와 엘리스', true),
                  DetailText('벤자민 클로하우저와 댄서', true),
                  DetailText('주토피아의 닉과 주디', true),
                  DetailText('영화 ‘업(UP)’의 칼 할아버지와 러셀, 더그와 댄서', true),
                  DetailText('매리다와 댄서', true),
                  DetailText('모아나, 라푼젤, 포카혼타스와 댄서', true),
                  DetailText('댄서', true),
                  DetailText('리멤버미(코코)의 미겔, 헥토르와 텐션 높은 댄서', true),
                  DetailText('인크레더블', true),
                  DetailText('토이스토리 버즈, 우디', true),
                  DetailText('슈가러쉬(주먹왕랄프)의 바넬로피, 랄프', true),
                  DetailText('빅히어로의 베이맥스와 댄서', true),
                  DetailText('신데렐라, 미녀와 야수, 알라딘의 왕자와 공주', true),
                  DetailText(
                      '하모니 피날레 플로트카(미키, 미니, 구피, 플루토, 칩앤데일, 도날드데이지)', true),
                  DetailText(
                      '클라라벨카우, 호러스홀스칼라 / 마리와형제들(툴루즈, 베를리오즈) / 피노키오(지미니크리켓, 제페토)',
                      true),
                  DetailText('엔딩댄서', true),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 30),
      ],
    ),
  );
}
