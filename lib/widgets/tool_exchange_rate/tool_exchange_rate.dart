import 'package:flutter/material.dart';

Widget ExchangeRate(String nation, enMoneyUnit, sumMoney, koMoneyUnit) {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 48,
                height: 40,
                decoration: const ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: Color(0xFFE0E0E0)),
                  ),
                ),
                child: Image.asset(
                  'assets/nation_images/$nation.png',
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Text(
                enMoneyUnit,
                style: const TextStyle(
                  color: Color(0xFF757575),
                  fontSize: 20,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          Text(
            sumMoney,
            textAlign: TextAlign.right,
            style: const TextStyle(
              color: Color(0xFF9E9E9E),
              fontSize: 20,
              fontFamily: 'Pretendard',
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            koMoneyUnit,
            textAlign: TextAlign.right,
            style: const TextStyle(
              color: Color(0xFF9E9E9E),
              fontSize: 12,
              fontFamily: 'Pretendard',
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    ],
  );
}
