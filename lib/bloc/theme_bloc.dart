import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/events/theme_event.dart';
import 'package:weather/models/weather.dart';
import 'package:weather/states/theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  final WeatherConditionsEnum? condition;

  ThemeBloc(super.initialState, this.condition) {
    on<ThemeEvent>((event, emit) {
      ThemeState theme =
          ThemeState(theme: ThemeData.light(), color: Colors.grey);
      switch (condition) {
        case null:
          theme = ThemeState(theme: ThemeData.light(), color: Colors.grey);
          break;
        case WeatherConditionsEnum.Thunderstorm:
          theme = ThemeState(
            theme: ThemeData(
              primaryColor: Colors.deepPurpleAccent,
            ),
            color: Colors.deepPurple,
          );
          break;
        case WeatherConditionsEnum.Clouds:
          theme = ThemeState(
            theme: ThemeData(
              primaryColor: Colors.indigoAccent,
            ),
            color: Colors.indigo,
          );
          break;
        case WeatherConditionsEnum.Drizzle:
          theme = ThemeState(
            theme: ThemeData(
              primaryColor: Colors.tealAccent,
            ),
            color: Colors.teal,
          );
          break;
        case WeatherConditionsEnum.Rain:
          theme = ThemeState(
            theme: ThemeData(
              primaryColor: Colors.blueAccent,
            ),
            color: Colors.blue,
          );
          break;
        case WeatherConditionsEnum.Snow:
          theme = ThemeState(
            theme: ThemeData(
              primaryColor: Colors.cyanAccent,
            ),
            color: Colors.cyan,
          );
          break;
        case WeatherConditionsEnum.Atmosphere:
          theme = ThemeState(
            theme: ThemeData(
              primaryColor: Colors.white38,
            ),
            color: Colors.blueGrey,
          );
          break;
        case WeatherConditionsEnum.Clear:
          theme = ThemeState(
            theme: ThemeData(
              primaryColor: Colors.yellowAccent,
            ),
            color: Colors.yellow,
          );
          break;
      }
      emit(ThemeState(theme: theme.theme, color: theme.color));
    });
  }
}
