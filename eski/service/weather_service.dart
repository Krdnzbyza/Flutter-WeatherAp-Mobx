/*import 'package:http/http.dart' as http;

import '../models/weather_model.dart';

class WeatherService {
  Future<Weather> getWeather(String cityName) async {
    var uri = Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?q=$cityName&appid=5ced3e29ec197264cbde45eb9898273a');
    var testap = await http.get(uri);
    // Map<String, dynamic> json = jsonDecode(testap.body);
    return weatherFromJson(testap.body);
  }
}
*/