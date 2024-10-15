import 'package:flutter/material.dart';

Widget FloorInformation(
    String image, terminal, floor1, floor2, floor3, floor4, floor5) {
  return Column(
    children: [
      Row(
        children: [
          Container(
            width: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xff4D9E8A)),
            child: Column(
              children: [
                // 이 부분 사진이 Container에 딱 맞게 안 들어가서 수정함.
                SizedBox(
                  width: 300,
                  height: 150,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10)),
                    child: Image.asset(
                      image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            terminal,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                              fontFamily: 'Ownglyph okticon',
                            ),
                          )
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '• ', // 점을 추가합니다.
                            style: TextStyle(
                              height: 0.9,
                              fontSize: 18,
                              color: Colors.white.withOpacity(0.75),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              floor1,
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.75),
                                fontSize: 14,
                                fontFamily: 'Ownglyph okticon',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '• ', // 점을 추가합니다.
                            style: TextStyle(
                              height: 0.9,
                              fontSize: 18,
                              color: Colors.white.withOpacity(0.75),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              floor2,
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.75),
                                fontSize: 14,
                                fontFamily: 'Ownglyph okticon',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '• ', // 점을 추가합니다.
                            style: TextStyle(
                              height: 0.9,
                              fontSize: 18,
                              color: Colors.white.withOpacity(0.75),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              floor3,
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.75),
                                fontSize: 14,
                                fontFamily: 'Ownglyph okticon',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '• ', // 점을 추가합니다.
                            style: TextStyle(
                              height: 0.9,
                              fontSize: 18,
                              color: Colors.white.withOpacity(0.75),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              floor4,
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.75),
                                fontSize: 14,
                                fontFamily: 'Ownglyph okticon',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '• ', // 점을 추가합니다.
                            style: TextStyle(
                              height: 0.9,
                              fontSize: 18,
                              color: Colors.white.withOpacity(0.75),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              floor5,
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.75),
                                fontSize: 14,
                                fontFamily: 'Ownglyph okticon',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 9),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    ],
  );
}
