import 'package:vexana/vexana.dart';
import 'package:weather_app_mobx/weather_mobx/core/model/weather_model.dart';

abstract class IWeatherService {
  final INetworkManager manager;

  IWeatherService(this.manager);

  Future<List<WeatherModel>> fetchWeathers();
}
