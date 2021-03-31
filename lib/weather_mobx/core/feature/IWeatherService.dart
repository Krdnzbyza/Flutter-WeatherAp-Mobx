import 'package:vexana/vexana.dart';

import '../model/weather_model.dart';

abstract class IWeatherService {
  final INetworkManager manager;

  IWeatherService(this.manager);

  Future<WeatherModel> get fetchWeathers;

  Future<WeatherModel> selectCityFetchWeathers(String city);
}
