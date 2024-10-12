import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:school_trip_app/screens/trip_tool_screens/trip_tool_screen.dart';

Widget FirstLineCalculator(String container1, container4) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      // "AC" 초기화
      InkWell(
        onTap: () {},
        child: Container(
          width: 70,
          height: 70,
          decoration: const ShapeDecoration(
            color: Color(0xFFE0E0E0),
            shape: OvalBorder(),
          ),
          child: Center(
            child: Text(
              container1,
              style: const TextStyle(
                color: Color(0xFF616161),
                fontSize: 32,
                fontFamily: 'Ownglyph okticon',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ),

      InkWell(
        onTap: () {},
        child: Container(
          width: 70,
          height: 70,
          decoration: const ShapeDecoration(
            color: Color(0xFFE0E0E0),
            shape: OvalBorder(),
          ),
        ),
      ),

      InkWell(
        onTap: () {},
        child: Container(
          width: 70,
          height: 70,
          decoration: const ShapeDecoration(
            color: Color(0xFFE0E0E0),
            shape: OvalBorder(),
          ),
        ),
      ),
      // 나누기
      InkWell(
        onTap: () {},
        child: Container(
          width: 70,
          height: 70,
          decoration: const ShapeDecoration(
            color: Color(0xFF4D9E8A),
            shape: OvalBorder(),
          ),
          child: Center(
            child: SvgPicture.asset(
                'assets/tool_screen_icons/${container4}_icon.svg'),
          ),
        ),
      ),
    ],
  );
}

Widget SecondLineCalculator(
    String container1, container2, container3, container4) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      // 숫자 7
      InkWell(
        onTap: () {},
        child: Container(
          width: 70,
          height: 70,
          decoration: const ShapeDecoration(
            color: Color(0xFF94C5B9),
            shape: OvalBorder(),
          ),
          child: Center(
            child: Text(
              container1,
              style: const TextStyle(
                color: Color(0xFF1A1A1A),
                fontSize: 32,
                fontFamily: 'Ownglyph okticon',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ),
      // 숫자 8
      InkWell(
        onTap: () {},
        child: Container(
          width: 70,
          height: 70,
          decoration: const ShapeDecoration(
            color: Color(0xFF94C5B9),
            shape: OvalBorder(),
          ),
          child: Center(
            child: Text(
              container2,
              style: const TextStyle(
                color: Color(0xFF1A1A1A),
                fontSize: 32,
                fontFamily: 'Ownglyph okticon',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ),
      // 숫자 9
      InkWell(
        onTap: () {},
        child: Container(
          width: 70,
          height: 70,
          decoration: const ShapeDecoration(
            color: Color(0xFF94C5B9),
            shape: OvalBorder(),
          ),
          child: Center(
            child: Text(
              container3,
              style: const TextStyle(
                color: Color(0xFF1A1A1A),
                fontSize: 32,
                fontFamily: 'Ownglyph okticon',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ),
      // 곱하기
      InkWell(
        onTap: () {},
        child: Container(
          width: 70,
          height: 70,
          decoration: const ShapeDecoration(
            color: Color(0xFF4D9E8A),
            shape: OvalBorder(),
          ),
          child: Center(
            child: SvgPicture.asset(
                'assets/tool_screen_icons/${container4}_icon.svg'),
          ),
        ),
      ),
    ],
  );
}

Widget ThirdLineCalculator(
    String container1, container2, container3, container4) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      // 숫자 4
      InkWell(
        onTap: () {},
        child: Container(
          width: 70,
          height: 70,
          decoration: const ShapeDecoration(
            color: Color(0xFF94C5B9),
            shape: OvalBorder(),
          ),
          child: Center(
            child: Text(
              container1,
              style: const TextStyle(
                color: Color(0xFF1A1A1A),
                fontSize: 32,
                fontFamily: 'Ownglyph okticon',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ),
      // 숫자 5
      InkWell(
        onTap: () {},
        child: Container(
          width: 70,
          height: 70,
          decoration: const ShapeDecoration(
            color: Color(0xFF94C5B9),
            shape: OvalBorder(),
          ),
          child: Center(
            child: Text(
              container2,
              style: const TextStyle(
                color: Color(0xFF1A1A1A),
                fontSize: 32,
                fontFamily: 'Ownglyph okticon',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ),
      // 숫자 6
      InkWell(
        onTap: () {},
        child: Container(
          width: 70,
          height: 70,
          decoration: const ShapeDecoration(
            color: Color(0xFF94C5B9),
            shape: OvalBorder(),
          ),
          child: Center(
            child: Text(
              container3,
              style: const TextStyle(
                color: Color(0xFF1A1A1A),
                fontSize: 32,
                fontFamily: 'Ownglyph okticon',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ),
      // 빼기
      InkWell(
        onTap: () {},
        child: Container(
          width: 70,
          height: 70,
          decoration: const ShapeDecoration(
            color: Color(0xFF4D9E8A),
            shape: OvalBorder(),
          ),
          child: Center(
            child: SvgPicture.asset(
                'assets/tool_screen_icons/${container4}_icon.svg'),
          ),
        ),
      ),
    ],
  );
}

Widget FourthLineCalculator(
    String container1, container2, container3, container4) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      // 숫자 1
      InkWell(
        onTap: () {},
        child: Container(
          width: 70,
          height: 70,
          decoration: const ShapeDecoration(
            color: Color(0xFF94C5B9),
            shape: OvalBorder(),
          ),
          child: Center(
            child: Text(
              container1,
              style: const TextStyle(
                color: Color(0xFF1A1A1A),
                fontSize: 32,
                fontFamily: 'Ownglyph okticon',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ),
      // 숫자 2
      InkWell(
        onTap: () {},
        child: Container(
          width: 70,
          height: 70,
          decoration: const ShapeDecoration(
            color: Color(0xFF94C5B9),
            shape: OvalBorder(),
          ),
          child: Center(
            child: Text(
              container2,
              style: const TextStyle(
                color: Color(0xFF1A1A1A),
                fontSize: 32,
                fontFamily: 'Ownglyph okticon',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ),
      // 숫자 3
      InkWell(
        onTap: () {},
        child: Container(
          width: 70,
          height: 70,
          decoration: const ShapeDecoration(
            color: Color(0xFF94C5B9),
            shape: OvalBorder(),
          ),
          child: Center(
            child: Text(
              container3,
              style: const TextStyle(
                color: Color(0xFF1A1A1A),
                fontSize: 32,
                fontFamily: 'Ownglyph okticon',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ),
      // 더하기
      InkWell(
        onTap: () {},
        child: Container(
          width: 70,
          height: 70,
          decoration: const ShapeDecoration(
            color: Color(0xFF4D9E8A),
            shape: OvalBorder(),
          ),
          child: Center(
            child: SvgPicture.asset(
                'assets/tool_screen_icons/${container4}_icon.svg'),
          ),
        ),
      ),
    ],
  );
}

Widget FifthLineCalculator(String container1, container2, container3) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      // 숫자 0
      InkWell(
        onTap: () {},
        child: Container(
          width: 150,
          height: 70,
          decoration: ShapeDecoration(
            color: const Color(0xFF94C5B9),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100),
            ),
          ),
          child: Center(
            child: Text(
              container1,
              style: const TextStyle(
                color: Color(0xFF1A1A1A),
                fontSize: 32,
                fontFamily: 'Ownglyph okticon',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ),
      // 소수점 "."
      InkWell(
        onTap: () {},
        child: Container(
          width: 70,
          height: 70,
          decoration: const ShapeDecoration(
            color: Color(0xFF94C5B9),
            shape: OvalBorder(),
          ),
          child: Center(
            child: Text(
              container2,
              style: const TextStyle(
                color: Color(0xFF1A1A1A),
                fontSize: 32,
                fontFamily: 'Ownglyph okticon',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ),
      // "=" 결과
      InkWell(
        onTap: () {},
        child: Container(
          width: 70,
          height: 70,
          decoration: const ShapeDecoration(
            color: Color(0xFF4D9E8A),
            shape: OvalBorder(),
          ),
          child: Center(
            child: SvgPicture.asset(
                'assets/tool_screen_icons/${container3}_icon.svg'),
          ),
        ),
      ),
    ],
  );
}

// 최근 수정 내용 : 기존의 버튼을 제외하고 0을 위한 버튼을 구현하기 위해서
// 새로운 enum 클래스 BtnShape를 생성해서 switch case를 이용해 특정 상황일 경우
// flatButton이 등장하게 코드 수정
// enum BtnShape { CIRCLE, FLAT }

// class BasicBtn extends StatelessWidget {
//   final BtnShape? shape;
//   final Color color;
//   final Widget child;
//   final Function() onPressed;
//   const BasicBtn(
//       {super.key,
//       required this.child,
//       required this.color,
//       this.shape = BtnShape.CIRCLE,
//       required this.onPressed});

//   @override
//   Widget build(BuildContext context) {
//     switch (shape) {
//       case BtnShape.CIRCLE:
//         return _btn(BtnSize.btnRound, BtnSize.btnRound);
//       case BtnShape.FLAT:
//         return _btn(BtnSize.btnRound, BtnSize.btnFlatWidth);
//       default:
//         return Container();
//     }
//   }

//   // 기존의 body는 높이와 너비를 요구하는 위젯 클래스로 재생성
//   Widget _btn(double height, double width) {
//     return SizedBox(
//       width: width,
//       height: height,
//       child: CupertinoButton(
//         color: color,
//         padding: const EdgeInsets.all(8.0),
//         borderRadius: BorderRadius.circular(100),
//         child: child,
//         onPressed: onPressed,
//       ),
//     );
//   }
// }

// enum BlackBtnType {
//   ONE,
//   TWO,
//   THREE,
//   FOUR,
//   FIVE,
//   SIX,
//   SEVEN,
//   EIGHT,
//   NINE,
//   ZERO,
//   DOT
// }

// class BlackBtn extends StatelessWidget {
//   final BlackBtnType type;
//   final Function() onPressed;
//   const BlackBtn({super.key, required this.type, required this.onPressed});

//   @override
//   Widget build(BuildContext context) {
//     switch (type) {
//       case BlackBtnType.ONE:
//         return _numberBtn('1');

//       case BlackBtnType.TWO:
//         return _numberBtn('2');

//       case BlackBtnType.THREE:
//         return _numberBtn('3');

//       case BlackBtnType.FOUR:
//         return _numberBtn('4');

//       case BlackBtnType.FIVE:
//         return _numberBtn('5');

//       case BlackBtnType.SIX:
//         return _numberBtn('6');

//       case BlackBtnType.SEVEN:
//         return _numberBtn('7');

//       case BlackBtnType.EIGHT:
//         return _numberBtn('8');

//       case BlackBtnType.NINE:
//         return _numberBtn('9');

//       case BlackBtnType.ZERO:
//         return _zeroBtn('0');

//       case BlackBtnType.DOT:
//         return _numberBtn('.');
//     }
//   }

//   Widget _numberBtn(String number) {
//     return BasicBtn(
//       color: BtnColor.black,
//       onPressed: onPressed,
//       child: _numberText(number),
//     );
//   }

//   Widget _zeroBtn(String number) {
//     return BasicBtn(
//       color: BtnColor.black,
//       shape: BtnShape.FLAT,
//       onPressed: onPressed,
//       child: _numberText(number),
//     );
//   }

//   Widget _numberText(String number) {
//     return Text(
//       number,
//       style: TextStyle(
//         fontSize: 35,
//         color: CupertinoColors.white,
//       ),
//     );
//   }
// }

// // '=' 결과 버튼
// class EqualBtn extends StatelessWidget {
//   final Function() onPressed;
//   const EqualBtn({super.key, required this.onPressed});

//   @override
//   Widget build(BuildContext context) {
//     return BasicBtn(
//       color: BtnColor.orange,
//       onPressed: onPressed,
//       child: BtnIconType.equal,
//     );
//   }
// }

// // 회색 버튼 클래스
// // enum GreyBtnType을 통해서 버튼의 종류를 확인하여 알맞은
// // Widget funtion을 switch case문으로 반환함.

// enum GreyBtnType { ALLCLEAR, PLUSNMINUS, PERCENT }

// class GreyBtn extends GetView<CalculatorController> {
//   final GreyBtnType type;
//   final Function() onPressed;
//   const GreyBtn({
//     Key? key,
//     required this.type,
//     required this.onPressed,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     switch (type) {
//       case GreyBtnType.PLUSNMINUS:
//         return _buttonETC(BtnIconType.plusAndMinus);
//       case GreyBtnType.PERCENT:
//         return _buttonETC(BtnIconType.percent);
//       case GreyBtnType.ALLCLEAR:
//         return _buttonAllClear();
//     }
//   }

//   Widget _buttonAllClear() {
//     return SizedBox(
//       width: BtnSize.btnRound,
//       height: BtnSize.btnRound,
//       child: Obx(
//         () => CupertinoButton(
//           color: BtnColor.silver,
//           padding: const EdgeInsets.all(8.0),
//           borderRadius: BorderRadius.circular(100),
//           child: (controller.result == '0')
//               ? BtnIconType.allClear
//               : BtnIconType.clear,
//           onPressed: onPressed,
//         ),
//       ),
//     );
//   }

//   Widget _buttonETC(Icon icon) {
//     return BasicBtn(color: BtnColor.silver, onPressed: onPressed, child: icon);
//   }
// }

// // 사측연산을 하는 오렌지색 버튼 클래스
// class OrangeBtn extends StatelessWidget {
//   final Icon iconFront;
//   final Icon iconBack;
//   final bool isClicked;
//   final void Function() onPressed;
//   const OrangeBtn({
//     super.key,
//     required this.iconFront,
//     required this.iconBack,
//     required this.isClicked,
//     required this.onPressed,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         _backBtn(),
//         _frontBtn(),
//       ],
//     );
//   }

//   Widget _backBtn() {
//     return SizedBox(
//       width: BtnSize.btnRound,
//       height: BtnSize.btnRound,
//       child: CupertinoButton(
//         color: BtnColor.white,
//         padding: const EdgeInsets.all(8.0),
//         borderRadius: BorderRadius.circular(100),
//         onPressed: onPressed,
//         child: iconBack,
//       ),
//     );
//   }

//   Widget _frontBtn() {
//     return AnimatedOpacity(
//       opacity: (isClicked) ? 0.0 : 1.0,
//       duration: const Duration(milliseconds: 300),
//       child: SizedBox(
//         width: BtnSize.btnRound,
//         height: BtnSize.btnRound,
//         child: CupertinoButton(
//           pressedOpacity: null,
//           color: BtnColor.orange,
//           padding: const EdgeInsets.all(8.0),
//           borderRadius: BorderRadius.circular(100),
//           child: iconFront,
//           onPressed: onPressed,
//         ),
//       ),
//     );
//   }
// }

// // 검정, 주황, 밝은 회색 버튼의 색을 담당하는 클래스
// class BtnColor {
//   static Color get orange => CupertinoColors.systemOrange;
//   static Color get silver => CupertinoColors.systemGrey;
//   static Color get black => const Color.fromARGB(255, 56, 56, 56);
//   static Color get white => CupertinoColors.white;
// }

// class BtnSize {
//   static double get btnRound => Get.size.width / 4 - 15;
//   static double get btnFlatWidth => 2 * Get.size.width / 4 - 15;
// }

// // 버튼 내부의 아이콘 클래스
// // 버튼 내부에서 사용할 아이콘들의 데이터의 프로퍼티까지 관리하는 클래스
// // 중복소스 방지용
// class BtnIconType {
//   static const double _iconSize = 35.0;
//   static final Color _greyBtnColor = CupertinoColors.black;
//   static final Color _orangeBtnColor = CupertinoColors.white;
//   static final Color _orangeBtnColorReverse = CupertinoColors.activeOrange;

//   static Icon get plusAndMinus => Icon(
//         CupertinoIcons.plus_slash_minus,
//         size: _iconSize,
//         color: _greyBtnColor,
//       );

//   static Icon get percent => Icon(
//         CupertinoIcons.percent,
//         size: _iconSize,
//         color: _greyBtnColor,
//       );
//   static Icon get plus => Icon(
//         CupertinoIcons.plus,
//         size: _iconSize,
//         color: _orangeBtnColor,
//       );
//   static Icon get plusReverse => Icon(
//         CupertinoIcons.plus,
//         size: _iconSize,
//         color: _orangeBtnColorReverse,
//       );
//   static Icon get minus => Icon(
//         CupertinoIcons.minus,
//         size: _iconSize,
//         color: _orangeBtnColor,
//       );
//   static Icon get minusReverse => Icon(
//         CupertinoIcons.minus,
//         size: _iconSize,
//         color: _orangeBtnColorReverse,
//       );
//   static Icon get multiply => Icon(
//         CupertinoIcons.multiply,
//         size: _iconSize,
//         color: _orangeBtnColor,
//       );
//   static Icon get multplyReverse => Icon(
//         CupertinoIcons.multiply,
//         size: _iconSize,
//         color: _orangeBtnColorReverse,
//       );
//   static Icon get divide => Icon(
//         CupertinoIcons.divide,
//         size: _iconSize,
//         color: _orangeBtnColor,
//       );
//   static Icon get divideReverse => Icon(
//         CupertinoIcons.divide,
//         size: _iconSize,
//         color: _orangeBtnColorReverse,
//       );
//   static Icon get equal => Icon(
//         CupertinoIcons.equal,
//         size: _iconSize,
//         color: _orangeBtnColor,
//       );

//   static Text get allClear => Text(
//         'AC',
//         style: TextStyle(fontSize: 30, color: CupertinoColors.black),
//       );

//   static Text get clear => Text(
//         'C',
//         style: TextStyle(fontSize: 30, color: CupertinoColors.black),
//       );
// }

// class ViewRatio {
//   static Map<String, int> get ratio =>
//       (Platform.isIOS) ? {'top': 1, 'bottom': 2} : {'top': 1, 'bottom': 4};
// }

// // 계산함수로직을 분리하기위한 CalculatorController 클래스임.

// // 메소드를 이용해서 계산을 진행함.

// enum Calculate { PLUS, MINUS, MULTIPLY, DIVIDE, NONE }

// class CalculatorController extends GetxController {
//   final RxString _result = '0'.obs;
//   num num1 = 0;
//   num num2 = 0;
//   Calculate status = Calculate.NONE;

//   bool pushCalculateBtn = false;
//   final RxBool _initStatus = true.obs;
//   final RxBool _pushPlus = false.obs;
//   final RxBool _pushMinus = false.obs;
//   final RxBool _pushMultiply = false.obs;
//   final RxBool _pushDivide = false.obs;

//   String get result => _result.value;
//   bool get init => _initStatus.value;
//   bool get plus => _pushPlus.value;
//   bool get minus => _pushMinus.value;
//   bool get multiply => _pushMultiply.value;
//   bool get divide => _pushDivide.value;

//   void allClear() {
//     initPushCalculateStatus();
//     initResultNumber();
//     num1 = 0;
//     num2 = 0;
//     status = Calculate.NONE;
//   }

//   void initResultNumber() {
//     _result.value = '0';
//   }

//   void initPushCalculateStatus() {
//     _pushPlus(false);
//     _pushMinus(false);
//     _pushMultiply(false);
//     _pushDivide(false);
//   }

//   void pushNumberBtn(String value) {
//     if (pushCalculateBtn) {
//       initResultNumber();
//       initPushCalculateStatus();
//       pushCalculateBtn = false;
//     }

//     if (_result.value[0] == '0' && _result.value.length == 1) {
//       _result('');
//     }
//     _result.value += value;
//   }

//   void pushCalculateBtnProgress(Calculate type) {
//     if (num1 != 0) {
//       switch (status) {
//         case Calculate.PLUS:
//           num1 += num.parse(_result.value);
//           break;
//         case Calculate.MINUS:
//           num1 -= num.parse(_result.value);
//           break;
//         case Calculate.MULTIPLY:
//           num1 *= num.parse(_result.value);
//           break;
//         case Calculate.DIVIDE:
//           num1 /= num.parse(_result.value);

//           break;
//         default:
//           break;
//       }
//       _result(num1.toString());
//     } else {
//       num1 = num.parse(_result.value);
//     }
//     initPushCalculateStatus();

//     switch (type) {
//       case Calculate.PLUS:
//         _pushPlus(true);
//         break;
//       case Calculate.MINUS:
//         _pushMinus(true);
//         break;
//       case Calculate.MULTIPLY:
//         _pushMultiply(true);
//         break;
//       case Calculate.DIVIDE:
//         _pushDivide(true);
//         break;
//       case Calculate.NONE:
//         break;
//     }
//     pushCalculateBtn = true;
//   }

//   void pushPlusBtn() {
//     status = Calculate.PLUS;
//     pushCalculateBtnProgress(status);
//     print(status);
//     print(_pushPlus);
//   }

//   void pushMinusBtn() {
//     status = Calculate.MINUS;
//     pushCalculateBtnProgress(status);
//     print(status);
//     print(_pushMinus);
//   }

//   void pushMultiplyBtn() {
//     status = Calculate.MULTIPLY;
//     pushCalculateBtnProgress(status);
//     print(status);
//     print(_pushMultiply);
//   }

//   void pushDivideBtn() {
//     status = Calculate.DIVIDE;
//     pushCalculateBtnProgress(status);
//   }

//   void pushDotBtn() {
//     if (_result.value.contains('.')) {
//       return;
//     }
//     _result.value += '.';
//   }

//   void changeToPercent() {
//     _result((num.parse(_result.value) / 100).toString());
//   }

//   doubleToInt(double d) {
//     if (d != d.round()) {
//       return d;
//     }
//     return d.toInt();
//   }

//   void calculate() {
//     num2 = num.parse(_result.value);
//     initPushCalculateStatus();
//     switch (status) {
//       case Calculate.PLUS:
//         _result(doubleToInt((num1 + num2).toDouble()).toString());
//         break;
//       case Calculate.MINUS:
//         _result(doubleToInt((num1 - num2).toDouble()).toString());

//         break;
//       case Calculate.MULTIPLY:
//         _result(doubleToInt((num1 * num2).toDouble()).toString());

//         break;
//       case Calculate.DIVIDE:
//         if (num2 == 0) {
//           _result.value = '오류';
//           return;
//         }
//         _result(doubleToInt((num1 / num2).toDouble()).toString());

//         break;
//       case Calculate.NONE:
//         break;
//     }
//     print(_result.value);
//   }

//   void convert() {
//     _result((num.parse(_result.value) * -1).toString());
//   }
// }
