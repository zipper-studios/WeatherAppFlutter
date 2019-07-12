
class WeatherItem{
  String _icon;
  String _description;
  String _main;
  int _id;

  WeatherItem(parsedJson) {
    _icon = parsedJson['icon'];
    _description = parsedJson['desctiption'];
    _main = parsedJson['main'];
    _id = parsedJson['id'];
  }

  int get id => _id;

  set id(int value) {
    _id = value;
  }

  String get main => _main;

  set main(String value) {
    _main = value;
  }

  String get description => _description;

  set description(String value) {
    _description = value;
  }

  String get icon => _icon;

  set icon(String value) {
    _icon = value;
  }

}