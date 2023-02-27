// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WeatherConditions _$$_WeatherConditionsFromJson(Map<String, dynamic> json) =>
    _$_WeatherConditions(
      description: json['description'] as String,
      icon: json['icon'] as String,
      main: $enumDecode(_$WeatherConditionsEnumEnumMap, json['main']),
    );

Map<String, dynamic> _$$_WeatherConditionsToJson(
        _$_WeatherConditions instance) =>
    <String, dynamic>{
      'description': instance.description,
      'icon': instance.icon,
      'main': _$WeatherConditionsEnumEnumMap[instance.main]!,
    };

const _$WeatherConditionsEnumEnumMap = {
  WeatherConditionsEnum.Thunderstorm: 'Thunderstorm',
  WeatherConditionsEnum.Drizzle: 'Drizzle',
  WeatherConditionsEnum.Rain: 'Rain',
  WeatherConditionsEnum.Snow: 'Snow',
  WeatherConditionsEnum.Atmosphere: 'Atmosphere',
  WeatherConditionsEnum.Clear: 'Clear',
  WeatherConditionsEnum.Clouds: 'Clouds',
};

_$_Temperature _$$_TemperatureFromJson(Map<String, dynamic> json) =>
    _$_Temperature(
      temp: (json['temp'] as num).toDouble(),
    );

Map<String, dynamic> _$$_TemperatureToJson(_$_Temperature instance) =>
    <String, dynamic>{
      'temp': instance.temp,
    };

_$_WeatherApiModel _$$_WeatherApiModelFromJson(Map<String, dynamic> json) =>
    _$_WeatherApiModel(
      name: json['name'] as String,
      main: Temperature.fromJson(json['main'] as Map<String, dynamic>),
      weather: (json['weather'] as List<dynamic>)
          .map((e) => WeatherConditions.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_WeatherApiModelToJson(_$_WeatherApiModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'main': instance.main,
      'weather': instance.weather,
    };
