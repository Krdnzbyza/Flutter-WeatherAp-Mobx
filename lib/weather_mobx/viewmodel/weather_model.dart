import 'package:mobx/mobx.dart';
import 'package:weather_app_mobx/weather_mobx/service/weather_service.dart';
part 'weather_model.g.dart';

class WeatherViewModel extends _WeatherViewModelBase with _$WeatherViewModel {
  WeatherViewModel(WeatherService weatherService) : super(weatherService);
}

abstract class _WeatherViewModelBase with Store {
  final WeatherService _weatherService;

  _WeatherViewModelBase(this._weatherService);
}
