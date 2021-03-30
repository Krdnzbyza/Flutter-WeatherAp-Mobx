import 'package:vexana/vexana.dart';

class ProductService {
  static ProductService? _instace;
  static ProductService get instance {
    _instace ??= ProductService._init();
    return _instace!;
  }

  final String _baseUrl = 'https://api.openweathermap.org/';

  late final INetworkManager networkManager; // oluştuğunda çalışmasına izin ver

  ProductService._init() {
    networkManager = NetworkManager(
      isEnableLogger: true,
      options: BaseOptions(baseUrl: _baseUrl),
    );
  }
}
