import 'package:weather_app/src/core/failure.dart';
import 'package:weather_app/src/domain/entities/weather_entity.dart';
import 'package:weather_app/src/domain/repositories/weather_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:weather_app/src/core/failure.dart';
import 'package:weather_app/src/domain/repositories/weather_repository.dart';

class GetCurrentWeather {
  final WeatherRepository repository;

  GetCurrentWeather(this.repository);

  Future<Either<Failure, Weather>> execute(String cityName) {
    return repository.getCurrentWeather(cityName);
  }
}
