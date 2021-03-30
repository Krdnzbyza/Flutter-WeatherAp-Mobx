import 'package:flutter/material.dart';

import '../model/weather_model.dart';

class TestField extends StatefulWidget {
  final WeatherModel? model;

  const TestField({Key? key, this.model}) : super(key: key);
  @override
  _TestFieldState createState() => _TestFieldState();
}

class _TestFieldState extends State<TestField> {
  WeatherModel weatherService = WeatherModel();
  String cityName = '';
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (text) {
        cityName = text;
      },
      textInputAction: TextInputAction.search,
      decoration: InputDecoration(
        hintText: 'Enter a city',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        suffixIcon:
            GestureDetector(onTap: _getWeather, child: Icon(Icons.search)),
      ),
    );
  }

  void _getWeather() async {
    String? result = weatherService.name.toString();
    setState(() {
      weatherService = result as WeatherModel; // add a cast ?
    });
  }
}
