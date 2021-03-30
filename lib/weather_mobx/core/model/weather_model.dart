import 'package:json_annotation/json_annotation.dart';
import 'package:vexana/vexana.dart';

part 'weather_model.g.dart';

@JsonSerializable()
class WeatherModel extends INetworkModel<WeatherModel> {
  Coord? coord;
  List<Weather>? weather;
  String? base;
  Main? main;
  int? visibility;
  Wind? wind;
  Clouds? clouds;
  int? dt;
  Sys? sys;
  int? timezone;
  int? id;
  String? name;
  int? cod;

  WeatherModel(
      {this.coord,
      this.weather,
      this.base,
      this.main,
      this.visibility,
      this.wind,
      this.clouds,
      this.dt,
      this.sys,
      this.timezone,
      this.id,
      this.name,
      this.cod});

  @override
  Map<String, dynamic> toJson() => _$WeatherModelToJson(this);

  @override
  WeatherModel fromJson(Map<String, dynamic> json) {
    return _$WeatherModelFromJson(json);
  }
}

@JsonSerializable()
class Coord extends INetworkModel<Coord> {
  double? lon;
  double? lat;

  Coord({this.lon, this.lat});

  @override
  Map<String, dynamic> toJson() => _$CoordToJson(this);

  @override
  Coord fromJson(Map<String, dynamic> json) {
    return _$CoordFromJson(json);
  }
}

@JsonSerializable()
class Weather extends INetworkModel<Weather> {
  int? id;
  String? main;
  String? description;
  String? icon;

  Weather({this.id, this.main, this.description, this.icon});

  @override
  Map<String, dynamic> toJson() => _$WeatherToJson(this);

  @override
  Weather fromJson(Map<String, dynamic> json) {
    return _$WeatherFromJson(json);
  }
}

@JsonSerializable()
class Main extends INetworkModel<Main> {
  double? temp;
  double? feelsLike;
  double? tempMin;
  double? tempMax;
  int? pressure;
  int? humidity;

  Main(
      {this.temp,
      this.feelsLike,
      this.tempMin,
      this.tempMax,
      this.pressure,
      this.humidity});

  @override
  Map<String, dynamic> toJson() => _$MainToJson(this);

  @override
  Main fromJson(Map<String, dynamic> json) {
    return _$MainFromJson(json);
  }
}

@JsonSerializable()
class Wind extends INetworkModel<Wind> {
  double? speed;
  int? deg;

  Wind({this.speed, this.deg});

  @override
  Map<String, dynamic> toJson() => _$WindToJson(this);

  @override
  Wind fromJson(Map<String, dynamic> json) {
    return _$WindFromJson(json);
  }
}

@JsonSerializable()
class Clouds extends INetworkModel<Clouds> {
  int? all;

  Clouds({this.all});

  @override
  Map<String, dynamic> toJson() => _$CloudsToJson(this);

  @override
  Clouds fromJson(Map<String, dynamic> json) {
    return _$CloudsFromJson(json);
  }
}

@JsonSerializable()
class Sys extends INetworkModel<Sys> {
  int? type;
  int? id;
  String? country;
  int? sunrise;
  int? sunset;

  Sys({this.type, this.id, this.country, this.sunrise, this.sunset});

  @override
  Map<String, dynamic> toJson() => _$SysToJson(this);

  @override
  Sys fromJson(Map<String, dynamic> json) {
    return _$SysFromJson(json);
  }
}
