import 'package:weather_app/src/data/datasources/remote/remote_datasource.dart';
import 'package:weather_app/src/data/datasources/repositories/weather_repository_impl.dart';
import 'package:weather_app/src/domain/repositories/weather_repository.dart';
import 'package:weather_app/src/domain/usecases/get_current_weather_usecase.dart';
import 'package:weather_app/src/presentation/bloc/weatherbloc/weather_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

void init() {
  // bloc
  locator.registerFactory(() => WeatherBloc(locator()));

  // usecase
  locator.registerLazySingleton(() => GetCurrentWeather(locator()));

  // repository
  locator.registerLazySingleton<WeatherRepository>(
    () => WeatherRepositoryImpl(
      remoteDataSource: locator(),
    ),
  );

  // data source
  locator.registerLazySingleton<RemoteDataSource>(
    () => RemoteDataSourceImpl(
      client: locator(),
    ),
  );

  // external
  locator.registerLazySingleton(() => http.Client());
}
