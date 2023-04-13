import 'package:starter/domain/response/current_weather_response.dart';

class Weather {
  final double? temp;
  final int weatherConditionCode;
  final double? minTemp;
  final double? maxTemp;
  final String description;
  final DateTime date;
  final int? humidity;
  final double? windSpeed;
  final String name;

  const Weather({
    required this.weatherConditionCode,
    required this.temp,
    required this.minTemp,
    required this.maxTemp,
    required this.description,
    required this.date,
    required this.humidity,
    required this.windSpeed,
    required this.name,
  });

  factory Weather.fromWeatherResponse(CurrentWeatherResponse response) {
    return Weather(
      weatherConditionCode: response.weather[0].id,
      temp: response.temperature?.currentTemperature,
      minTemp: response.temperature?.minimumTemperature,
      maxTemp: response.temperature?.maximumTemperature,
      description: response.weather[0].description,
      date: DateTime.fromMillisecondsSinceEpoch(response.dt * 1000),
      humidity: response.temperature?.humidity,
      windSpeed: response.wind?.speed,
      name: response.name,
    );
  }
}
