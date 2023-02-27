import 'package:weather/data/api/location_api/location_api.dart';
import 'package:weather/data/api/weather_api/weather_api.dart';
import 'package:weather/models/location.dart';
import 'package:weather/models/weather.dart';

class WeatherRepository {
  final LocationApi locationApi;
  final WeatherApi weatherApi;

  WeatherRepository({required this.locationApi, required this.weatherApi});

  Future<Weather> getWeather(String? city, double? lat, double? lon) async {
    if (city != null && city.isNotEmpty) {
      final Location location = await locationApi.getLocation(city);
      return await weatherApi.getCurrentWeather(location.lat, location.lon);
    } else {
      return await weatherApi.getCurrentWeather(lat!, lon!);
    }
  }
}
