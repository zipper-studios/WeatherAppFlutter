import 'package:weather_app/model/sys_model.dart';
import 'package:weather_app/model/weather_item_model.dart';
import 'package:weather_app/model/wind_model.dart';

import 'cloud_model.dart';
import 'coord_model.dart';
import 'main_model.dart';

class WeatherResponse{
  int _dt;
  Coord _coord;
  int _visibility;
  List<WeatherItem> _weather;
  String _name;
  int _cod;
  Main _main;
  Clouds _clouds;
  int _id;
  Sys _sys;
  String _base;
  Wind _wind;

  WeatherResponse.fromJson(Map<String, dynamic> parsedJson) {
    _dt = parsedJson['dt'];
    _coord = Coord(parsedJson['coord']);
    _visibility = parsedJson['visibility'];
    List<WeatherItem> weather = [];
    for (int i = 0; i < parsedJson['weather'].length; i++) {
      WeatherItem result = WeatherItem(parsedJson['weather'][i]);
      weather.add(result);
    }
    _weather = weather;
    _name = parsedJson['name'];
    _cod = parsedJson['cod'];
    _main = Main(parsedJson['main']);
    _clouds = Clouds(parsedJson['clouds']);
    _id = parsedJson['id'];
    _sys = Sys(parsedJson['sys']);
    _base = parsedJson['base'];
    _wind = Wind(parsedJson['wind']);
  }

  Wind get wind => _wind;

  set wind(Wind value) {
    _wind = value;
  }

  String get base => _base;

  set base(String value) {
    _base = value;
  }

  Sys get sys => _sys;

  set sys(Sys value) {
    _sys = value;
  }

  int get id => _id;

  set id(int value) {
    _id = value;
  }

  Clouds get clouds => _clouds;

  set clouds(Clouds value) {
    _clouds = value;
  }

  Main get main => _main;

  set main(Main value) {
    _main = value;
  }

  int get cod => _cod;

  set cod(int value) {
    _cod = value;
  }

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  List<WeatherItem> get weather => _weather;

  set weather(List<WeatherItem> value) {
    _weather = value;
  }

  int get visibility => _visibility;

  set visibility(int value) {
    _visibility = value;
  }

  Coord get coord => _coord;

  set coord(Coord value) {
    _coord = value;
  }

  int get dt => _dt;

  set dt(int value) {
    _dt = value;
  }

}