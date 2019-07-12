import 'dart:convert';
import 'package:http/http.dart' show Client;
import 'package:weather_app/model/weather_response_model.dart';

class ApiProvider {
  Client client = Client();

  //This is the London weather API url available at this link: https://openweathermap.org/current
  final _baseUrl =
      "https://samples.openweathermap.org/data/2.5/weather?q=London,uk&appid=b6907d289e10d714a6e88b30761fae22";

  Future<WeatherResponse> fetchLondonWeather() async {
    final response = await client.get("$_baseUrl"); // Make the network call asynchronously to fetch the London weather data.
    print(response.body.toString());

    if (response.statusCode == 200) {
      return WeatherResponse.fromJson(json.decode(response.body)); //Return decoded response
    } else {
      throw Exception('Failed to load weather');
    }
  }
}