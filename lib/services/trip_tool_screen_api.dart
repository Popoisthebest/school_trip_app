import 'dart:convert';
import 'package:http/http.dart' as http;

// 날씨 정보를 불러오는 API
class WeatherService {
  final String apiKey; // API 키를 받아오는 부분
  final String locationKey; // 지역 키를 받아오는 부분

  WeatherService({required this.apiKey, required this.locationKey});

  // API에서 데이터를 불러와 필요한 정보만 추출하는 메서드
  Future<List<WeatherForecast>> fetchWeatherData() async {
    // API URL 생성
    final String apiUrl =
        'http://dataservice.accuweather.com/forecasts/v1/daily/5day/$locationKey?apikey=$apiKey&language=ko&metric=true';

    // API 요청
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      // API에서 받은 JSON 데이터를 디코딩
      final Map<String, dynamic> jsonData = json.decode(response.body);

      // 필요한 정보만 추출
      List<WeatherForecast> forecasts = [];
      // 최대 4일치만 불러오도록 설정
      for (var i = 0; i < 4; i++) {
        var dayData = jsonData['DailyForecasts'][i];
        final date = dayData['Date'].substring(5, 10).replaceAll('-', '.');
        final minTempC = dayData['Temperature']['Minimum']['Value'];
        final maxTempC = dayData['Temperature']['Maximum']['Value'];
        final icon = dayData['Day']['Icon'];

        // WeatherForecast 객체 생성 후 리스트에 추가
        forecasts.add(WeatherForecast(date, minTempC, maxTempC, icon));
      }

      return forecasts;
    } else {
      throw Exception('Failed to load weather data: ${response.statusCode}');
    }
  }
}

// 날씨 예보 데이터를 담을 클래스
class WeatherForecast {
  final String date;
  final double minTempC;
  final double maxTempC;
  final int icon;

  WeatherForecast(this.date, this.minTempC, this.maxTempC, this.icon);
}
