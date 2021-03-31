/*
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class WeatherView extends StatefulWidget {
  @override
  _WeatherViewState createState() => _WeatherViewState();
}

class _WeatherViewState extends State<WeatherView> {
  @override
  Widget build(BuildContext context) {
    final _titleText = 'WEATHER';
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[200],
        title: Text(
          _titleText,
          style: Theme.of(context)
              .textTheme
              .headline4!
              .copyWith(color: Colors.white70),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 16),
        alignment: Alignment.center,
        child: buildInitialInput(),
      ),
    );
  }

  Widget buildInitialInput() {
    final _lottieUrl = 'https://assets9.lottiefiles.com/temp/lf20_dgjK9i.json';
    return Center(
      child: Column(
        children: [
          Lottie.network(_lottieUrl),
          Divider(),
          CityInputField(),
        ],
      ),
    );
  }
}

class CityInputField extends StatefulWidget {
  @override
  _CityInputFieldState createState() => _CityInputFieldState();
}

class _CityInputFieldState extends State<CityInputField> {
  String cityName = '';
  //Weather? currentWeather;
  //WeatherService weatherService = WeatherService();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        /* currentWeather != null
            ? Center(
                child: Column(
                  children: [
                    Text(currentWeather!.sys.country,
                        style: Theme.of(context).textTheme.headline3),
                    Divider(thickness: 2),
                    Text(currentWeather!.name,
                        style: Theme.of(context).textTheme.headline3),
                    Divider(thickness: 2),
                    Text(
                        '${convertTemp(currentWeather!.main.temp).toString()} °C',
                        style: Theme.of(context).textTheme.headline5),
                    Divider(thickness: 2),
                    Text(currentWeather!.id.toString(),
                        style: Theme.of(context).textTheme.headline3),
                    Divider(thickness: 2),
                  ],
                ),
              )s
            : Center(child: CircularProgressIndicator()),*/
        Padding(
          padding: const EdgeInsets.symmetric(),
          child: textField(),
        ),
      ],
    );
  }

  TextField textField() {
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

  submitCityName(BuildContext context, String value) {}

  void _getWeather() async {
    // var result = await weatherService.getWeather(cityName);
    setState(() {
      // currentWeather = result;
    });
  }

  double convertTemp(double kelvin) {
    return kelvin - 273.15;
  }
}
*/