
class Clouds {
  int _all;

  Clouds(parsedJson)  {
    _all = parsedJson['all'];
  }

  int get all => _all;

  set all(int value) {
    _all = value;
  }
}
