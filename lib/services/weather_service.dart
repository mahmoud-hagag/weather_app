import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_app/models/weather_model.dart';

class Weather_Service {
  String baseUrl = 'http://api.weatherapi.com/v1';
  String apiKey = 'e680b0da300f4247a81195416233007';
  Future<WeatherModel?> getweather({required String cityName}) async {
    WeatherModel? weather;
    try {
      Uri url =
        Uri.parse('$baseUrl/forecast.json?key=$apiKey&q=$cityName&aqi=no');
    http.Response response = await http.get(url);
    Map<String, dynamic> data = jsonDecode(response.body);
    weather = WeatherModel.fromjson(data);
    } catch (e) {}
    return weather;
  }
}
