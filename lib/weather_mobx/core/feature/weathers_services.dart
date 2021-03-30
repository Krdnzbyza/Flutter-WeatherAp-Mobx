import 'package:vexana/vexana.dart';
import 'package:weather_app_mobx/weather_mobx/core/exception/network_not_found.dart';
import 'package:weather_app_mobx/weather_mobx/core/feature/IWeatherService.dart';
import 'package:weather_app_mobx/weather_mobx/core/model/weather_model.dart';

class WeatherService extends IWeatherService {
  WeatherService(INetworkManager manager) : super(manager);

  @override
  Future<List<WeatherModel>> fetchWeathers() async {
    final response = await manager.send<WeatherModel, List<WeatherModel>>(
        NetworkPath.WEATHERS.rawValue(),
        parseModel: WeatherModel(),
        method: RequestType.GET);

    return response.data ?? [];
  }
}

enum NetworkPath { WEATHERS }

extension NetworkPathExtension on NetworkPath {
  String rawValue() {
    switch (this) {
      case NetworkPath.WEATHERS:
        return 'data/2.5/weather?q=London,uk&APPID=8aa7d8f91556412cc4545d00559a57fe';

      default:
        throw NetworkPathException(this);
    }
  }
}
