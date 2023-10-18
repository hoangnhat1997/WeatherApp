import 'package:weather_app/src/core/failure.dart';
import 'package:weather_app/src/domain/entities/weather_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:weather_app/src/core/failure.dart';

abstract class WeatherRepository {
  Future<Either<Failure, Weather>> getCurrentWeather(
    String cityName,
  );
}
