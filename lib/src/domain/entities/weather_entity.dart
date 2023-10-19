import 'package:equatable/equatable.dart';

class Weather extends Equatable {
  const Weather({
    required this.date,
    required this.cityName,
    required this.main,
    required this.description,
    required this.iconCode,
    required this.temperature,
    required this.pressure,
    required this.humidity,
    required this.temperatureMin,
    required this.temperatureMax,
    required this.weatherCode,
    required this.sunrise,
    required this.sunset,
  });
  final int date;
  final String cityName;
  final String main;
  final String description;
  final String iconCode;
  final double temperature;
  final double temperatureMin;
  final double temperatureMax;
  final int pressure;
  final int humidity;
  final int weatherCode;
  final int sunrise;
  final int sunset;

  @override
  List<Object?> get props => [
        date,
        cityName,
        main,
        description,
        iconCode,
        temperature,
        temperatureMin,
        temperatureMax,
        pressure,
        humidity,
        weatherCode,
        sunrise,
        sunset
      ];
}
