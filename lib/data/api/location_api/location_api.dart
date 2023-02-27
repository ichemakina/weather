import 'package:dio/dio.dart';
import 'package:weather/AppConfig.dart';
import 'package:weather/constants/endpoints.dart';
import 'package:weather/data/api/location_api/location_api_model.dart';
import 'package:weather/models/location.dart';

final dio = Dio();

class LocationApi {
  Future<Location> getLocation(String city) async {
    const locationUrl = '${AppConfig.baseUrl}/${Endpoints.location}';
    final locationResponse = await dio.get(locationUrl, queryParameters: {
      'q': city,
      'appid': AppConfig.weatherToken,
      'lang': 'ru'
    });
    if (locationResponse.statusCode != 200) {
      throw Exception('Ошибка получения данных');
    }

    final locations = locationResponse.data;
    var gettedLocations = <Location>[];

    for (int i = 0; i < locations.length; i++) {
      final locationApiModel = LocationApiModel.fromJson(
        locations[i] as Map<String, Object?>,
      );
      gettedLocations.add(
        locationApiModel.toDomain(),
      );
    }
    return gettedLocations.first;
  }
}
