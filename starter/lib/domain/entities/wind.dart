// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Wind {
  final double? speed;

  Wind({
    this.speed,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'speed': speed,
    };
  }

  factory Wind.fromMap(Map<String, dynamic> map) {
    return Wind(
      speed: map['speed'] != null ? map['speed'] as double : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Wind.fromJson(String source) => Wind.fromMap(json.decode(source) as Map<String, dynamic>);
}
