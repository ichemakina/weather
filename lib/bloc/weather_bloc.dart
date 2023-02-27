import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather/data/repositories/weather_repository.dart';
import 'package:weather/events/weather_event.dart';
import 'package:weather/models/weather.dart';
import 'package:weather/states/weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final WeatherRepository weatherRepository;

  WeatherBloc(super.initialState, {required this.weatherRepository}) {
    on<WeatherRequested>((event, emit) async {
      emit(WeatherLoadInProgress());
      try {
        final Weather weather = await weatherRepository.getWeather(
            event.city, event.lat, event.lon);
        emit(WeatherLoadSuccess(weather: weather));
      } catch (_) {
        emit(WeatherLoadFailure());
      }
    });
    on<WeatherCurrentPositionRequested>((event, emit) async {
      emit(WeatherLoadInProgress());
      LocationPermission permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.whileInUse ||
          permission == LocationPermission.always) {
        Position position = await Geolocator.getCurrentPosition(
            desiredAccuracy: LocationAccuracy.high);
        add(WeatherRequested(lat: position.latitude, lon: position.longitude));
      } else {
        await Geolocator.requestPermission();
        add(const WeatherCurrentPositionRequested());
      }
    });
  }
}
