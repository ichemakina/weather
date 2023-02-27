import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather/AppConfig.dart';
import 'package:weather/models/weather.dart';

class CurrentWeatherWidget extends StatelessWidget {
  final Weather weather;

  const CurrentWeatherWidget({super.key, required this.weather});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Text(
          weather.cityName,
          style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8),
        child: Text(
          DateFormat('HH:mm').format(weather.lastUpdated),
          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
        ),
      ),
      Padding(
          padding: const EdgeInsets.only(top: 150),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${weather.temp.ceil()}°C',
                  style: const TextStyle(
                      fontSize: 40, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          )),
      Text(weather.description),
      Image.network("${AppConfig.iconUrl}/${weather.iconCode}@2x.png"),
    ]);
  }
}
