import 'package:flutter/material.dart';
import 'package:weather_app/data/datasource/remote_datasource.dart';
import 'package:weather_app/data/repository/weather_repository.dart';
import 'package:weather_app/domain/entities/weather.dart';
import 'package:weather_app/domain/repository/base_weather_repository.dart';
import 'domain/usecases/get_weather_by_country.dart';

void main() async{
  BaseRemoteDataSource baseRemoteDataSource=RemoteDataSource();
  BaseWeatherRepository baseWeatherRepository=WeatherRepository(baseRemoteDataSource);
  Weather weather=await
  GetWeatherByCountryName(baseWeatherRepository).excute("Egypt");
  print(weather);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold()
    );
  }
}

