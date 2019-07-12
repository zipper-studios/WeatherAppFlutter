
class Coord {
  double _lon;
  double _lat;

  Coord(parsedJson) {
    _lon = parsedJson['lon'];
    _lat = parsedJson['lat'];
  }

  double get lat => _lat;

  set lat(double value) {
    _lat = value;
  }

  double get lon => _lon;

  set lon(double value) {
    _lon = value;
  }
}