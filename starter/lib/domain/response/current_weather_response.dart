// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:starter/domain/entities/temperature.dart';
import 'package:starter/domain/entities/weather_desc.dart';
import 'package:starter/domain/entities/wind.dart';

class CurrentWeatherResponse {
  final List<WeatherDesc> weather;

  final Temperature? temperature;

  final Wind? wind;

  final String name;

  final int dt;

  CurrentWeatherResponse({
    required this.name,
    required this.weather,
    this.temperature,
    required this.dt,
    this.wind,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'weather': weather.map((x) => x.toMap()).toList(),
      'main': temperature?.toMap(),
      'wind': wind?.toMap(),
      'name': name,
      'dt': dt,
    };
  }

  factory CurrentWeatherResponse.fromMap(Map<String, dynamic> map) {
    return CurrentWeatherResponse(
      weather: List<WeatherDesc>.from(
        (map['weather'] as List<int>).map<WeatherDesc>(
          (x) => WeatherDesc.fromMap(x as Map<String, dynamic>),
        ),
      ),
      temperature:
          map['main'] != null ? Temperature.fromMap(map['main'] as Map<String, dynamic>) : null,
      wind: map['wind'] != null ? Wind.fromMap(map['wind'] as Map<String, dynamic>) : null,
      name: map['name'] as String,
      dt: map['dt'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory CurrentWeatherResponse.fromJson(String source) =>
      CurrentWeatherResponse.fromMap(json.decode(source) as Map<String, dynamic>);
}
