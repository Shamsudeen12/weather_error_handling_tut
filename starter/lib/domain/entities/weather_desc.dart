import 'dart:convert';

class WeatherDesc {
  final int id;
  final String main;
  final String description;

  WeatherDesc({
    required this.id,
    required this.main,
    required this.description,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'main': main,
      'description': description,
    };
  }

  factory WeatherDesc.fromMap(Map<String, dynamic> map) {
    return WeatherDesc(
      id: map['id'] as int,
      main: map['main'] as String,
      description: map['description'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory WeatherDesc.fromJson(String source) =>
      WeatherDesc.fromMap(json.decode(source) as Map<String, dynamic>);
}
