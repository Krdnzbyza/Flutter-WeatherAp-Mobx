// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'dart:convert';
import 'package:weather_app_mobx/main.dart';
import 'package:http/http.dart' as http;
import 'package:weather_app_mobx/weather_mobx/models/weather_model.dart';

void main() {
  test('Test', () async {
    var uri = Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?q=Ankara&appid=5ced3e29ec197264cbde45eb9898273a');
    var testap = await http.get(uri);
    // Map<String, dynamic> json = jsonDecode(testap.body);
    var weather = weatherFromJson(testap.body);
    print(weather.toString());
  });
}
