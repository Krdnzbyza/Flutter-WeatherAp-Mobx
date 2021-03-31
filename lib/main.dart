import 'package:flutter/material.dart';

import 'weather_mobx/feed/view/weather_mobx_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather',
      home: WeatherMobxView(),
    );
  }
}
