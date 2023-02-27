import 'package:equatable/equatable.dart';

abstract class WeatherEvent extends Equatable {
  const WeatherEvent();
}

class WeatherRequested extends WeatherEvent {
  final String city;
  final double lat;
  final double lon;

  const WeatherRequested({this.city = "", this.lat = 0.0, this.lon = 0.0});

  @override
  List<Object> get props => [city];
}

class WeatherCurrentPositionRequested extends WeatherEvent {
  const WeatherCurrentPositionRequested() : super();

  @override
  List<Object> get props => [];
}
