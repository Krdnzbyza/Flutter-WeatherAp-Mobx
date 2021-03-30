import 'package:mobx/mobx.dart';

import 'package:weather_app_mobx/weather_mobx/core/feature/IWeatherService.dart';
import 'package:weather_app_mobx/weather_mobx/core/model/weather_model.dart';

part 'weather_model.g.dart';

class WeatherMobx = _WeatherMobxBase with _$WeatherMobx;

abstract class _WeatherMobxBase with Store {
  IWeatherService weatherService;

  _WeatherMobxBase({
    required this.weatherService,
  }) {
    fetchItems();
  }
  @observable
  bool isLoading = false; // widget etkilenecekse  observable ile sarmalanır

  @observable
  var weatherItems = ObservableList<WeatherModel>();

  @action // işlem yapılır ve bu işlem yapıldığında haber verilecekse action
  void changeLoading() {
    isLoading = !isLoading;
  }

  @action
  Future<void> fetchItems() async {
    changeLoading();
    var response = await weatherService.fetchWeathers();
    weatherItems = response.asObservable(); // servis isteği
    changeLoading();
  }
}
