import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/bloc/theme_bloc.dart';
import 'package:weather/bloc/weather_bloc.dart';
import 'package:weather/data/repositories/weather_repository.dart';
import 'package:weather/events/theme_event.dart';
import 'package:weather/events/weather_event.dart';
import 'package:weather/states/theme_state.dart';
import 'package:weather/states/weather_state.dart';
import 'package:weather/widgets/city_selection%20_widget.dart';
import 'package:weather/widgets/current_weather_widget.dart';
import 'package:weather/widgets/theme_widget.dart';

class MainPageWidget extends StatefulWidget {
  final WeatherRepository weatherRepository;

  const MainPageWidget({super.key, required this.weatherRepository});

  @override
  State<MainPageWidget> createState() => _MainPageWidgetState();
}

class _MainPageWidgetState extends State<MainPageWidget> {
  late WeatherBloc _weatherBloc;
  late ThemeBloc _themeBloc;

  @override
  void initState() {
    super.initState();
    _weatherBloc = WeatherBloc(WeatherInitial(),
        weatherRepository: widget.weatherRepository);
    _weatherBloc.add(const WeatherCurrentPositionRequested());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        shadowColor: Colors.orange,
        backgroundColor: const Color.fromRGBO(240, 248, 255, 1),
        leading: const Icon(Icons.sunny, color: Colors.black),
        title: const Text('Погода'),
        titleTextStyle: const TextStyle(
            color: Colors.black, fontWeight: FontWeight.normal, fontSize: 20),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search, color: Colors.black),
            onPressed: () async {
              final city = await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return CitySelectionWidget();
                  },
                ),
              );
              if (city != null) {
                _weatherBloc.add(WeatherRequested(city: city));
              }
            },
          ),
          IconButton(
            icon: const Icon(Icons.location_on, color: Colors.black),
            onPressed: () {
              _weatherBloc.add(const WeatherCurrentPositionRequested());
            },
          ),
        ],
      ),
      body: Center(
        child: BlocBuilder<WeatherBloc, WeatherState>(
          bloc: _weatherBloc,
          builder: (_, WeatherState state) {
            if (state is WeatherInitial) {
              return const Center(child: Text('Выберите город'));
            }
            if (state is WeatherLoadInProgress) {
              return const Center(child: CircularProgressIndicator());
            }
            if (state is WeatherLoadSuccess) {
              final weather = state.weather;

              _themeBloc = ThemeBloc(
                  ThemeState(theme: ThemeData.light(), color: Colors.grey),
                  weather.weatherCondition);
              _themeBloc.add(
                  WeatherChanged(weatherCondition: weather.weatherCondition));

              return BlocBuilder(
                bloc: _themeBloc,
                builder: (_, ThemeState themeState) {
                  return ThemeWidget(
                    color: themeState.color,
                    child: Center(
                      child: CurrentWeatherWidget(weather: weather),
                    ),
                  );
                },
              );
            }
            if (state is WeatherLoadFailure) {
              return const Text(
                'Информация не найдена',
                style: TextStyle(color: Colors.red),
              );
            } else {
              return const Text('Необходимо перезапустить приложение');
            }
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    _weatherBloc.close();
    super.dispose();
  }
}
