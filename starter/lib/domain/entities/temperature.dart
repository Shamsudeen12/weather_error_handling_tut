// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Temperature {
  final double? currentTemperature;

  final double? feelsLike;

  final double? minimumTemperature;

  final double? maximumTemperature;

  final int? humidity;

  Temperature({
    this.currentTemperature,
    this.feelsLike,
    this.minimumTemperature,
    this.maximumTemperature,
    this.humidity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'temp': currentTemperature,
      'feels_like': feelsLike,
      'temp_min': minimumTemperature,
      'temp_max': maximumTemperature,
      'humidity': humidity,
    };
  }

  factory Temperature.fromMap(Map<String, dynamic> map) {
    return Temperature(
      currentTemperature: map['temp'] != null ? map['temp'] as double : null,
      feelsLike: map['feels_like'] != null ? map['feels_like'] as double : null,
      minimumTemperature: map['temp_min'] != null ? map['temp_min'] as double : null,
      maximumTemperature: map['temp_max'] != null ? map['temp_max'] as double : null,
      humidity: map['humidity'] != null ? map['humidity'] as int : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Temperature.fromJson(String source) =>
      Temperature.fromMap(json.decode(source) as Map<String, dynamic>);
}
