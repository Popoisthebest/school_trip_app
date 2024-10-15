import 'package:flutter/material.dart';

Widget PlaceDiscription(
    String mainDis, image, subDis, detailDis, bool isNoTitle) {
  return Padding(
    padding: const EdgeInsets.only(top: 30.0),
    child: Column(
      children: [
        isNoTitle
            ? const SizedBox()
            : Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Row(
                  children: [
                    Text(
                      mainDis,
                      style: const TextStyle(
                        color: Color(0xBF1A1A1A),
                        fontSize: 20,
                        fontFamily: 'Ownglyph okticon',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                  ],
                ),
              ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: 220,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    subDis,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Ownglyph okticon',
                      color: const Color(0xFF1A1A1A).withOpacity(0.75),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Flexible(
                    child: Text(
                      detailDis,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'Ownglyph okticon',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    ),
  );
}
