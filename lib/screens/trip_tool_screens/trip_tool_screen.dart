import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:school_trip_app/services/trip_tool_screen_api.dart';

class TripToolScreen extends StatefulWidget {
  const TripToolScreen({super.key});

  @override
  _TripToolScreenState createState() => _TripToolScreenState();
}

class _TripToolScreenState extends State<TripToolScreen> {
  late Future<List<WeatherForecast>> weatherData;

  @override
  void initState() {
    super.initState();

    // WeatherService 인스턴스 생성 (API 키와 지역 키 설정)
    final weatherService = WeatherService(
      apiKey: '4IguABM21GVnbtyhQHJy1AoYEbmNenGU', // 여기에 API 키 입력
      locationKey: '226396', // 여기에 지역 키 입력
    );

    // 날씨 데이터를 가져오는 fetchWeatherData 호출
    weatherData = weatherService.fetchWeatherData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              children: [
                const SizedBox(height: 42),
                const Row(
                  children: [
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: '수학여행 중\n도쿄 ',
                            style: TextStyle(
                              color: Color(0xFF1A1A1A),
                              fontSize: 32,
                              fontFamily: 'Ownglyph okticon',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                          TextSpan(
                            text: '날씨',
                            style: TextStyle(
                              color: Color(0xFF4F9AD4),
                              fontSize: 32,
                              fontFamily: 'Ownglyph okticon',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                // FutureBuilder로 API 데이터 불러오기
                FutureBuilder<List<WeatherForecast>>(
                  future: weatherData,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      // 로딩 중일 때 로딩 인디케이터 표시
                      return const Center(child: CircularProgressIndicator());
                    } else if (snapshot.hasError) {
                      // 에러가 발생하면 에러 메시지 표시
                      return const Center(
                          child: Text('Failed to load weather data'));
                    } else if (snapshot.hasData) {
                      // 데이터가 있을 경우 화면에 출력
                      List<WeatherForecast> forecasts = snapshot.data!;
                      return Container(
                        height: 140,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                width: 2, color: Color(0xFF4D9E8A)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: forecasts.map((forecast) {
                            return Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  forecast.date,
                                  style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'Ownglyph okticon',
                                  ),
                                ),
                                const SizedBox(height: 8),
                                const Icon(
                                  // 아이콘 코드로부터 날씨 아이콘 설정
                                  Icons.wb_sunny, // 여기에 맞는 날씨 아이콘을 설정
                                  color: Colors.orange,
                                  size: 32,
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  '${forecast.minTempC.toInt()}°/${forecast.maxTempC.toInt()}°',
                                  style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'Ownglyph okticon',
                                  ),
                                ),
                              ],
                            );
                          }).toList(),
                        ),
                      );
                    } else {
                      return Container(); // 데이터가 없을 경우 빈 컨테이너 반환
                    }
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
