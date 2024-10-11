import 'package:flutter/material.dart';

Widget MainStore(List<Map<String, dynamic>> stores) {
  return Column(
    children: [
      const Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: Text(
              '주요 매장',
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

  const ImportantStoreCard({
    super.key,
    required this.stimagePath,
    required this.stname,
    required this.stintroduce,
    this.onTap,
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
              Image.asset(
                stimagePath,
                width: 300,
                height: 150,
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
                    const SizedBox(
                      height: 15,
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
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 9.0),
                              child: Text(
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
