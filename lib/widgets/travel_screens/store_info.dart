import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget StoreInfo(
  String time,
  price,
  Widget addition,
  tip,
  bool isPrice,
  isAddition,
  isTip,
) {
  return Container(
    decoration: const BoxDecoration(
      border: Border.symmetric(
        horizontal: BorderSide(
          color: Color(0xFFE0E0E0),
          width: 2,
        ),
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.only(
        left: 22.0,
        top: 25,
        bottom: 25,
      ),
      child: Column(
        children: [
          Row(
            children: [
              SvgPicture.asset('assets/travel_detail_icons/time_icon.svg'),
              const SizedBox(width: 12),
              Text(
                time,
                style: const TextStyle(
                  color: Color(0xFF1A1A1A),
                  fontSize: 16,
                  fontFamily: 'Ownglyph okticon',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              )
            ],
          ),
          isPrice
              ? Column(
                  children: [
                    const SizedBox(height: 22),
                    Row(
                      children: [
                        SvgPicture.asset(
                            'assets/travel_detail_icons/money_icon.svg'),
                        const SizedBox(width: 12),
                        Text(
                          price,
                          style: const TextStyle(
                            color: Color(0xFF1A1A1A),
                            fontSize: 16,
                            fontFamily: 'Ownglyph okticon',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        )
                      ],
                    ),
                  ],
                )
              : const SizedBox(),
          isAddition ? addition : const SizedBox(),
          isTip
              ? Column(
                  children: [
                    const SizedBox(height: 22),
                    Column(
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(
                                'assets/travel_detail_icons/lightbulb_icon.svg'),
                            const SizedBox(width: 12),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '이용팁',
                                  style: TextStyle(
                                    color: Color(0xFF1A1A1A),
                                    fontSize: 16,
                                    fontFamily: 'Ownglyph okticon',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 36,
                            ),
                            Text(
                              tip,
                              style: const TextStyle(
                                color: Color(0xFF1A1A1A),
                                fontSize: 14,
                                fontFamily: 'Ownglyph okticon',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                )
              : const SizedBox(),
        ],
      ),
    ),
  );
}
