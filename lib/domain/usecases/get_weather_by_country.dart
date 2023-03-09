
import 'package:weather_app/domain/entities/weather.dart';
import 'package:weather_app/domain/repository/base_weather_repository.dart';

class GetWeatherByCountryName{

  final BaseWeatherRepository repository;
  GetWeatherByCountryName(this.repository);

  Future<Weather>excute(String cityName)async
  {
    return await repository.getWeatherByCityName(cityName);
  }


}