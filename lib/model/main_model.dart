
class Main {
  double _temp;
  double _tempMin;
  int _humidity;
  int _pressure;
  double _tempMax;

  Main(parsedJson) {
    _temp = parsedJson['temp'];
    _tempMin = parsedJson['temp_min'];
    _humidity = parsedJson['humidity'];
    _pressure = parsedJson['pressure'];
    _tempMax = parsedJson['temp_max'];
  }

  double get tempMax => _tempMax;

  set tempMax(double value) {
    _tempMax = value;
  }

  int get pressure => _pressure;

  set pressure(int value) {
    _pressure = value;
  }

  int get humidity => _humidity;

  set humidity(int value) {
    _humidity = value;
  }

  double get tempMin => _tempMin;

  set tempMin(double value) {
    _tempMin = value;
  }

  double get temp => _temp;

  set temp(double value) {
    _temp = value;
  }
}
