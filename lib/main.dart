import 'package:flutter/material.dart';
import 'package:weather/widgets/main_page_widget.dart';
import 'package:weather/data/api/location_api/location_api.dart';
import 'package:weather/data/api/weather_api/weather_api.dart';
import 'package:weather/data/repositories/weather_repository.dart';

void main() {
  final WeatherRepository weatherRepository =
      WeatherRepository(locationApi: LocationApi(), weatherApi: WeatherApi());
  runApp(MyApp(weatherRepository: weatherRepository));
}

class MyApp extends StatelessWidget {
  final WeatherRepository weatherRepository;

  const MyApp({super.key, required this.weatherRepository});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPageWidget(
        weatherRepository: weatherRepository,
      ),
    );
  }
}
