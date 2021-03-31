import 'package:flutter/material.dart';
import 'package:weather_app_mobx/weather_mobx/core/model/weather_model.dart';

import 'weather_result.dart';

class WeaatherCase extends StatelessWidget {
  final WeatherModel model;

  const WeaatherCase({Key? key, required this.model}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Column(
            children: [
              Text(model.name ?? toString(),
                  style: Theme.of(context).textTheme.headline3),
              Divider(thickness: 2),
              Text(model.id.toString(),
                  style: Theme.of(context).textTheme.headline3),
              Divider(thickness: 2),
              /*   Text('${convertTemp(model.main.temp).toString()} °C',
                  style: Theme.of(context).textTheme.headline5),
              Divider(thickness: 2),*/
              Text(model.timezone.toString(),
                  style: Theme.of(context).textTheme.headline3),
              Divider(thickness: 2),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(),
          child: TestField(),
        ),
      ],
    );
  }
  /*
   double convertTemp(double kelvin) {
    return kelvin - 273.15;
  }
  */
}
