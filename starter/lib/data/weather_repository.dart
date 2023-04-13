// Abstract class for Weather repository
import 'package:starter/domain/entities/weather.dart';

abstract class WeatherRepository {
  Future<Weather> fetchWeather();
}
