// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:weather_clean_architecture/data/models/weather_model.dart';

import '../../core/constants/constants.dart';
import '../../core/error/exceprion.dart';

abstract class WeatherRemoteDataSource {
  Future<WeatherModel> getCurrentWeather(String cityName);
}

class WeatherRemoteDataSourceImpl extends WeatherRemoteDataSource {
  final http.Client client;
  WeatherRemoteDataSourceImpl({
    required this.client,
  });
  @override
  Future<WeatherModel> getCurrentWeather(String cityName) async {
    final response =
      await client.get(Uri.parse(Urls.currentWeatherByName(cityName)));

     if (response.statusCode == 200) {
      return WeatherModel.fromJson(json.decode(response.body));
    } else {
      throw ServerException();
    }
  }
}
