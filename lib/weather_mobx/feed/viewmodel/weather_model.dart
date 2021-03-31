import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import '../../core/feature/IWeatherService.dart';
import '../../core/model/weather_model.dart';

part 'weather_model.g.dart';

class WeatherMobx = _WeatherMobxBase with _$WeatherMobx;

abstract class _WeatherMobxBase with Store {
  IWeatherService weatherService;
  late TextEditingController controller;

  _WeatherMobxBase({
    required this.weatherService,
  }) {
    controller = TextEditingController();
    fetchItems();
  }

  @observable
  bool isLoading = false; // widget etkilenecekse  observable ile sarmalanır

  @observable
  WeatherModel weatherItems = WeatherModel();

  @action // işlem yapılır ve bu işlem yapıldığında haber verilecekse action
  void changeLoading() {
    isLoading = !isLoading;
  }

  @action
  Future<void> fetchItems() async {
    changeLoading();
    weatherItems = await weatherService.fetchWeathers.asObservable();
    changeLoading();
  }

  @action
  Future<void> onPressedSearchCity() async {
    changeLoading();

    if (controller.text.isNotEmpty) {
      weatherItems = await weatherService
          .selectCityFetchWeathers(controller.text)
          .asObservable();
    }
    changeLoading();
  }
}
