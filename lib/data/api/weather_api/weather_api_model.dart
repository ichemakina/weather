import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:weather/models/weather.dart';

part 'weather_api_model.freezed.dart';

part 'weather_api_model.g.dart';

@freezed
class WeatherConditions with _$WeatherConditions {
  const factory WeatherConditions(
      {required String description,
      required String icon,
      required WeatherConditionsEnum main}) = _WeatherConditions;

  factory WeatherConditions.fromJson(Map<String, Object?> json) =>
      _$WeatherConditionsFromJson(json);
}

@freezed
class Temperature with _$Temperature {
  const factory Temperature({
    required double temp,
  }) = _Temperature;

  factory Temperature.fromJson(Map<String, Object?> json) =>
      _$TemperatureFromJson(json);
}

@freezed
class WeatherApiModel with _$WeatherApiModel {
  const factory WeatherApiModel(
      {required String name,
      required Temperature main,
      required List<WeatherConditions> weather}) = _WeatherApiModel;

  factory WeatherApiModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherApiModelFromJson(json);
}

extension WeatheApiModelToDomain on WeatherApiModel {
  Weather toDomain() {
    return Weather(
        cityName: name,
        description: weather.first.description,
        iconCode: weather.first.icon,
        temp: main.temp,
        lastUpdated: DateTime.now(),
        weatherCondition: weather.first.main);
  }
}
