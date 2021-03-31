import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../core/feature/weathers_services.dart';
import '../../core/service/product_service.dart';
import '../../widget/weather_case.dart';
import '../../widget/weather_result.dart';
import '../viewmodel/weather_model.dart';

final WeatherMobx _mobx = WeatherMobx(
    // ınstance oluşturma
    weatherService: WeatherService(ProductService.instance.networkManager));

class WeatherMobxView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _titleText = 'WEATHER';
    return Scaffold(
      appBar: appBar(_titleText, context),
      body: Observer(
        builder: (_) {
          if (_mobx.isLoading) {
            return Center(child: CircularProgressIndicator());
          } else {
            return Column(
              children: [
                WeaatherCase(model: _mobx.weatherItems),
                Padding(
                  padding: const EdgeInsets.symmetric(),
                  child: WeatherTextField(
                    controller: _mobx.controller,
                    onPressed: () => _mobx.onPressedSearchCity(),
                  ),
                ),
              ],
            );
          }
        },
      ),
    );
  }

  AppBar appBar(String _titleText, BuildContext context) {
    return AppBar(
      backgroundColor: Colors.deepPurple[200],
      title: Text(
        _titleText,
        style: Theme.of(context)
            .textTheme
            .headline4!
            .copyWith(color: Colors.white70),
      ),
    );
  }
}
