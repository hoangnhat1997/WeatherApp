import 'dart:io';

import 'package:weather_app/src/data/datasources/remote/remote_datasource.dart';
import 'package:weather_app/src/core/exception.dart';
import 'package:weather_app/src/core/failure.dart';
import 'package:weather_app/src/domain/entities/weather_entity.dart';
import 'package:weather_app/src/domain/repositories/weather_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:weather_app/src/core/exception.dart';
import 'package:weather_app/src/core/failure.dart';

class WeatherRepositoryImpl implements WeatherRepository {
  final RemoteDataSource remoteDataSource;

  WeatherRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, Weather>> getCurrentWeather(String cityName) async {
    try {
      final result = await remoteDataSource.getCurrentWeather(cityName);
      return Right(result.toEntity());
    } on ServerException {
      return const Left(ServerFailure(''));
    } on SocketException {
      return const Left(ConnectionFailure('Failed to connect to the network'));
    }
  }
}
