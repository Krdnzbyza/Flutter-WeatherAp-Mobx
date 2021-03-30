import 'package:weather_app_mobx/weather_mobx/core/feature/weathers_services.dart';

class NetworkPathException implements Exception {
  final NetworkPath path;

  NetworkPathException(this.path);
  @override
  String toString() {
    return 'No has found network path : $path';
  }
}
