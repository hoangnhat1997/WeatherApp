import 'package:equatable/equatable.dart';
import 'package:weather_app/src/domain/entities/weather_entity.dart';

class WeatherModel extends Equatable {
  const WeatherModel({
    required this.date,
    required this.cityName,
    required this.main,
    required this.description,
    required this.iconCode,
    required this.temperature,
    required this.temperatureMin,
    required this.temperatureMax,
    required this.pressure,
    required this.humidity,
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

  factory WeatherModel.fromJson(Map<String, dynamic> json) => WeatherModel(
      date: json['dt'],
      cityName: json['name'],
      main: json['weather'][0]['main'],
      description: json['weather'][0]['description'],
      iconCode: json['weather'][0]['icon'],
      temperature: json['main']['temp'],
      temperatureMin: json['main']['temp_min'],
      temperatureMax: json['main']['temp_max'],
      pressure: json['main']['pressure'],
      humidity: json['main']['humidity'],
      weatherCode: json['cod'],
      sunrise: json['sys']['sunrise'],
      sunset: json['sys']['sunset']);

  Map<String, dynamic> toJson() => {
        'weather': [
          {
            'main': main,
            'description': description,
            'icon': iconCode,
          },
        ],
        'main': {
          'temp': temperature,
          'temp_min': temperatureMin,
          'temp_max': temperatureMax,
          'pressure': pressure,
          'humidity': humidity,
        },
        'name': cityName,
        'dt': date,
        'cod': weatherCode,
        'sys': {
          "sunrise": sunrise,
          'sunset': sunset,
        }
      };

  Weather toEntity() => Weather(
        date: date,
        cityName: cityName,
        main: main,
        description: description,
        iconCode: iconCode,
        temperature: temperature,
        temperatureMin: temperatureMin,
        temperatureMax: temperatureMax,
        pressure: pressure,
        humidity: humidity,
        weatherCode: weatherCode,
        sunrise: sunrise,
        sunset: sunset,
      );

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
