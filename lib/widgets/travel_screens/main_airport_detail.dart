import 'package:flutter/material.dart';

Widget MainAirportDetail(List<Map<String, dynamic>> stores, bool isDisney, isMeal) {
  return Column(
    children: [
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: isDisney
                ? const Text(
                    '구역 소개',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Ownglyph okticon',
                      color: Color(0xFF1A1A1A),
                    ),
                  )
                : const Text(
                    '주요 시설 한눈에 보기',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Ownglyph okticon',
                      color: Color(0xFF1A1A1A),
                    ),
                  ),
          ),
        ],
      ),
      const SizedBox(
        height: 10,
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: Row(
            children: stores.map((store) {
              return ImportantStoreCard(
                stimagePath: store['stimagePath'] ?? '',
                stname: store['stname'] ?? '',
                stintroduce: store['stintroduce'] ?? '',
                onTap: store['onTap'] as VoidCallback?,
                isDisney: true,
              );
            }).toList(),
          ),
        ),
      ),
    ],
  );
}

class ImportantStoreCard extends StatelessWidget {
  final String stimagePath;
  final String stname;
  final String stintroduce;
  final VoidCallback? onTap;
  final bool isDisney;

  const ImportantStoreCard({
    super.key,
    required this.stimagePath,
    required this.stname,
    required this.stintroduce,
    this.onTap,
    required this.isDisney,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
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
                    stimagePath,
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
                          stname,
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
                      children: [
                        Flexible(
                          child: Text(
                            stintroduce,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Colors.white.withOpacity(0.75),
                              fontFamily: 'Ownglyph okticon',
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: onTap,
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                    color: Colors.white.withOpacity(0.75),
                                    width: 0.8),
                              ),
                            ),
                            child: isDisney
                                ? const SizedBox(height: 11)
                                : Text(
                                    "장소보기",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'Ownglyph okticon',
                                      color: Colors.white.withOpacity(0.75),
                                    ),
                                  ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
