import 'package:dartz/dartz.dart';
import 'package:weather_clean_architecture/domain/repositories/weather_repository.dart';

import '../../core/error/failure.dart';
import '../entities/weather.dart';

class GetCurrentWeatherUseCase {
  final WeatherRepository weatherRepository;
  GetCurrentWeatherUseCase(this.weatherRepository);

  Future<Either<Failure, WeatherEntity>> excute(String cityName) {
    return weatherRepository.getCurrentWeather(cityName);
  }
}
