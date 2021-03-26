import 'package:flutter/material.dart';
import 'package:weather_app_mobx/weather_mobx/view/weather_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather',
      home: WeatherView(),
    );
  }
}
