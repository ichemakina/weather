import 'package:equatable/equatable.dart';
import 'package:weather/models/weather.dart';

abstract class ThemeEvent extends Equatable {
  const ThemeEvent();
}

class WeatherChanged extends ThemeEvent {
  final WeatherConditionsEnum weatherCondition;

  const WeatherChanged({required this.weatherCondition});

  @override
  List<Object?> get props => [];
}
