class Weather {
  final String cityName;
  final double temp;
  final String iconCode;
  final String description;
  final DateTime lastUpdated;
  final WeatherConditionsEnum weatherCondition;

  Weather(
      {required this.cityName,
      required this.temp,
      required this.iconCode,
      required this.description,
      required this.lastUpdated,
      required this.weatherCondition});
}

enum WeatherConditionsEnum {
  ///Гроза
  Thunderstorm,

  ///Мелкий дождь
  Drizzle,

  ///Дождь
  Rain,

  ///Снег
  Snow,

  ///Туман
  Atmosphere,

  ///Ясно(Без осадков)
  Clear,

  ///Облачно
  Clouds
}
