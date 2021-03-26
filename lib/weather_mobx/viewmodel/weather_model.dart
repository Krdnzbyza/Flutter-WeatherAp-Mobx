/*
class WeatherViewModel = _WeatherViewModelBase with _$WeatherViewModel;

//WeatherViewModel(WeatherService weatherService) : super(weatherService);

abstract class _WeatherViewModelBase with Store {
  final WeatherService _weatherService;

  _WeatherViewModelBase(this._weatherService);

  ObservableFuture<Weather> _weatherFuture;
  @observable
  Weather weather;


  @computed

}
*/
import 'package:mobx/mobx.dart';
part 'weather_model.g.dart';

class WeatherViewModel = _WeatherViewModelBase with _$WeatherViewModel;

abstract class _WeatherViewModelBase with Store {}
