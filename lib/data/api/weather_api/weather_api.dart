import 'package:dio/dio.dart';
import 'package:weather/app_config.dart';
import 'package:weather/constants/endpoints.dart';
import 'package:weather/data/api/weather_api/weather_api_model.dart';
import 'package:weather/models/weather.dart';

final dio = Dio();

class WeatherApi {
  Future<Weather> getCurrentWeather(double lat, double lon) async {
    const weatherUrl = '${AppConfig.baseUrl}/${Endpoints.weather}';
    final weatherResponse = await dio.get(weatherUrl, queryParameters: {
      'lat': lat,
      'lon': lon,
      'appid': AppConfig.weatherToken,
      'lang': 'ru',
      'units': 'metric'
    });

    if (weatherResponse.statusCode != 200) {
      throw Exception('Ошибка получения данных');
    }

    final weather = weatherResponse.data;

    final weatherApiModel = WeatherApiModel.fromJson(
      weather as Map<String, Object?>,
    );

    return weatherApiModel.toDomain();
  }
}
