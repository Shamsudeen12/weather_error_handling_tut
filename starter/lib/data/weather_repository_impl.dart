// Extends WeatherRepository

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:geolocator/geolocator.dart';
import 'package:starter/data/weather_repository.dart';
import 'package:starter/domain/entities/weather.dart';
import 'package:http/http.dart' as http;
import 'package:starter/domain/response/current_weather_response.dart';

class WeatherRepositoryImpl extends WeatherRepository {
  @override
  Future<Weather> fetchWeather() async {
    try {
      final Position position = await Geolocator.getCurrentPosition();

      String apiKey = dotenv.env['API_KEY'] ?? '';

      Uri uri = Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?lat=${position.latitude}&lon=${position.longitude}&appid=$apiKey&units=metric',
      );

      final response = await http.get(uri);

      if (response.statusCode == 200) {
        return Weather.fromWeatherResponse(CurrentWeatherResponse.fromJson(response.body));
      } else {
        throw Exception('Failed to load weather');
      }
    } catch (err) {
      print(err);
      rethrow;
    }
  }
}
