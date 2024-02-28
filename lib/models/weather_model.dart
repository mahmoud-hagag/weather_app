import 'package:flutter/material.dart';

class WeatherModel {
  DateTime? date;
  double? temp;
  double? maxtemp;
  double? mintemp;
  String? weatherStateName;
  String? name;
  WeatherModel({
    required this.date,
    required this.temp,
    required this.maxtemp,
    required this.mintemp,
    required this.weatherStateName,
    required this.name,
  });
  factory WeatherModel.fromjson(dynamic data) {
    var jsonData = data['forecast']['forecastday'][0]['day'];
    return WeatherModel(
        date: DateTime.parse(data['current']['last_updated']),
        temp: jsonData['avgtemp_c'],
        maxtemp: jsonData['maxtemp_c'],
        mintemp: jsonData['mintemp_c'],
        weatherStateName: jsonData['condition']['text'],
        name: data['location']['name']);
  }
  String getImageDay() {
    if (weatherStateName == 'Sunny') {
      return 'assets/weather/64x64/day/113.png';
    } else if (weatherStateName == 'Partly cloudy') {
      return 'assets/weather/64x64/day/116.png';
    } else if (weatherStateName == 'Cloudy') {
      return 'assets/weather/64x64/day/119.png';
    } else if (weatherStateName == 'Overcast') {
      return 'assets/weather/64x64/day/122.png';
    } else if (weatherStateName == 'Patchy rain possible') {
      return 'assets/weather/64x64/day/176.png';
    } else if (weatherStateName == 'Patchy snow possible') {
      return 'assets/weather/64x64/day/179.png';
    } else if (weatherStateName == 'Patchy sleet possible') {
      return 'assets/weather/64x64/day/182.png';
    } else if (weatherStateName == 'Patchy freezing drizzle possible') {
      return 'assets/weather/64x64/day/185.png';
    } else if (weatherStateName == 'Thundery outbreaks possible') {
      return 'assets/weather/64x64/day/200.png';
    } else if (weatherStateName == 'Blowing snow') {
      return 'assets/weather/64x64/day/227.png';
    } else if (weatherStateName == 'Blizzard') {
      return 'assets/weather/64x64/day/230.png';
    } else if (weatherStateName == 'Fog') {
      return 'assets/weather/64x64/day/248.png';
    } else if (weatherStateName == 'Freezing fog') {
      return 'assets/weather/64x64/day/260.png';
    } else if (weatherStateName == 'Patchy light drizzle') {
      return 'assets/weather/64x64/day/263.png';
    } else if (weatherStateName == 'Light drizzle') {
      return 'assets/weather/64x64/day/266.png';
    } else if (weatherStateName == 'Freezing drizzle') {
      return 'assets/weather/64x64/day/281.png';
    } else if (weatherStateName == 'Heavy freezing drizzle"') {
      return 'assets/weather/64x64/day/284.png';
    } else if (weatherStateName == 'Patchy light rain"') {
      return 'assets/weather/64x64/day/293.png';
    } else if (weatherStateName == 'Light rain') {
      return 'assets/weather/64x64/day/296.png';
    } else if (weatherStateName == 'Moderate rain') {
      return 'assets/weather/64x64/day/302.png';
    } else if (weatherStateName == 'Heavy rain at times') {
      return 'assets/weather/64x64/day/305.png';
    } else if (weatherStateName == 'Heavy rain') {
      return 'assets/weather/64x64/day/308.png';
    } else if (weatherStateName == 'Light freezing rain') {
      return 'assets/weather/64x64/day/311.png';
    } else if (weatherStateName == 'Moderate or heavy freezing rain') {
      return 'assets/weather/64x64/day/314.png';
    } else if (weatherStateName == 'Light sleet') {
      return 'assets/weather/64x64/day/317.png';
    } else if (weatherStateName == 'Moderate or heavy sleet') {
      return 'assets/weather/64x64/day/320.png';
    } else if (weatherStateName == 'Patchy light snow') {
      return 'assets/weather/64x64/day/323.png';
    } else if (weatherStateName == 'Light snow') {
      return 'assets/weather/64x64/day/326.png';
    } else if (weatherStateName == 'Patchy moderate snow') {
      return 'assets/weather/64x64/day/329.png';
    } else if (weatherStateName == 'Moderate snow') {
      return 'assets/weather/64x64/day/332.png';
    } else if (weatherStateName == 'Patchy heavy snow') {
      return 'assets/weather/64x64/day/335.png';
    } else if (weatherStateName == 'Heavy snow') {
      return 'assets/weather/64x64/day/338.png';
    } else if (weatherStateName == 'Ice pellets') {
      return 'assets/weather/64x64/day/350.png';
    } else if (weatherStateName == 'Light rain shower') {
      return 'assets/weather/64x64/day/353.png';
    } else if (weatherStateName == 'Moderate or heavy rain shower') {
      return 'assets/weather/64x64/day/356.png';
    } else if (weatherStateName == 'Torrential rain shower') {
      return 'assets/weather/64x64/day/359.png';
    } else if (weatherStateName == 'Light sleet showers') {
      return 'assets/weather/64x64/day/362.png';
    } else if (weatherStateName == 'Moderate or heavy sleet showers') {
      return 'assets/weather/64x64/day/365.png';
    } else if (weatherStateName == 'Light snow showers') {
      return 'assets/weather/64x64/day/368.png';
    } else if (weatherStateName == 'Moderate or heavy snow showers') {
      return 'assets/weather/64x64/day/371.png';
    } else if (weatherStateName == 'Light showers of ice pellets') {
      return 'assets/weather/64x64/day/374.png';
    } else if (weatherStateName == 'Moderate or heavy showers of ice pellets') {
      return 'assets/weather/64x64/day/377.png';
    } else if (weatherStateName == 'Patchy light rain with thunder') {
      return 'assets/weather/64x64/day/386.png';
    } else if (weatherStateName == 'Moderate or heavy rain with thunder') {
      return 'assets/weather/64x64/day/389.png';
    } else if (weatherStateName == 'Patchy light snow with thunder') {
      return 'assets/weather/64x64/day/392.png';
    } else if (weatherStateName == 'Moderate or heavy snow with thunder') {
      return 'assets/weather/64x64/day/395.png';
    } else {
      return 'assets/weather/64x64/day/113.png';
    }
  }

  String getImageNight() {
    if (weatherStateName == 'Clear') {
      return 'assets/weather/64x64/night/113.png';
    } else if (weatherStateName == 'Partly cloudy') {
      return 'assets/weather/64x64/night/116.png';
    } else if (weatherStateName == 'Cloudy') {
      return 'assets/weather/64x64/night/119.png';
    } else if (weatherStateName == 'Mist') {
      return 'assets/weather/64x64/night/143.png';
    } else if (weatherStateName == 'Overcast') {
      return 'assets/weather/64x64/night/122.png';
    } else if (weatherStateName == 'Patchy rain possible') {
      return 'assets/weather/64x64/night/176.png';
    } else if (weatherStateName == 'Patchy snow possible') {
      return 'assets/weather/64x64/night/179.png';
    } else if (weatherStateName == 'Patchy sleet possible') {
      return 'assets/weather/64x64/night/182.png';
    } else if (weatherStateName == 'Patchy freezing drizzle possible') {
      return 'assets/weather/64x64/night/185.png';
    } else if (weatherStateName == 'Thundery outbreaks possible') {
      return 'assets/weather/64x64/night/200.png';
    } else if (weatherStateName == 'Blowing snow') {
      return 'assets/weather/64x64/night/227.png';
    } else if (weatherStateName == 'Blizzard') {
      return 'assets/weather/64x64/night/230.png';
    } else if (weatherStateName == 'Fog') {
      return 'assets/weather/64x64/night/248.png';
    } else if (weatherStateName == 'Freezing fog') {
      return 'assets/weather/64x64/night/260.png';
    } else if (weatherStateName == 'Patchy light drizzle') {
      return 'assets/weather/64x64/night/263.png';
    } else if (weatherStateName == 'Light drizzle') {
      return 'assets/weather/64x64/night/266.png';
    } else if (weatherStateName == 'Freezing drizzle') {
      return 'assets/weather/64x64/night/281.png';
    } else if (weatherStateName == 'Heavy freezing drizzle"') {
      return 'assets/weather/64x64/night/284.png';
    } else if (weatherStateName == 'Patchy light rain"') {
      return 'assets/weather/64x64/night/293.png';
    } else if (weatherStateName == 'Light rain') {
      return 'assets/weather/64x64/night/296.png';
    } else if (weatherStateName == 'Moderate rain') {
      return 'assets/weather/64x64/night/302.png';
    } else if (weatherStateName == 'Heavy rain at times') {
      return 'assets/weather/64x64/night/305.png';
    } else if (weatherStateName == 'Heavy rain') {
      return 'assets/weather/64x64/night/308.png';
    } else if (weatherStateName == 'Light freezing rain') {
      return 'assets/weather/64x64/night/311.png';
    } else if (weatherStateName == 'Moderate or heavy freezing rain') {
      return 'assets/weather/64x64/night/314.png';
    } else if (weatherStateName == 'Light sleet') {
      return 'assets/weather/64x64/night/317.png';
    } else if (weatherStateName == 'Moderate or heavy sleet') {
      return 'assets/weather/64x64/night/320.png';
    } else if (weatherStateName == 'Patchy light snow') {
      return 'assets/weather/64x64/night/323.png';
    } else if (weatherStateName == 'Light snow') {
      return 'assets/weather/64x64/night/326.png';
    } else if (weatherStateName == 'Patchy moderate snow') {
      return 'assets/weather/64x64/night/329.png';
    } else if (weatherStateName == 'Moderate snow') {
      return 'assets/weather/64x64/night/332.png';
    } else if (weatherStateName == 'Patchy heavy snow') {
      return 'assets/weather/64x64/night/335.png';
    } else if (weatherStateName == 'Heavy snow') {
      return 'assets/weather/64x64/night/338.png';
    } else if (weatherStateName == 'Ice pellets') {
      return 'assets/weather/64x64/night/350.png';
    } else if (weatherStateName == 'Light rain shower') {
      return 'assets/weather/64x64/night/353.png';
    } else if (weatherStateName == 'Moderate or heavy rain shower') {
      return 'assets/weather/64x64/night/356.png';
    } else if (weatherStateName == 'Torrential rain shower') {
      return 'assets/weather/64x64/night/359.png';
    } else if (weatherStateName == 'Light sleet showers') {
      return 'assets/weather/64x64/night/362.png';
    } else if (weatherStateName == 'Moderate or heavy sleet showers') {
      return 'assets/weather/64x64/night/365.png';
    } else if (weatherStateName == 'Light snow showers') {
      return 'assets/weather/64x64/night/368.png';
    } else if (weatherStateName == 'Moderate or heavy snow showers') {
      return 'assets/weather/64x64/night/371.png';
    } else if (weatherStateName == 'Light showers of ice pellets') {
      return 'assets/weather/64x64/night/374.png';
    } else if (weatherStateName == 'Moderate or heavy showers of ice pellets') {
      return 'assets/weather/64x64/night/377.png';
    } else if (weatherStateName == 'Patchy light rain with thunder') {
      return 'assets/weather/64x64/night/386.png';
    } else if (weatherStateName == 'Moderate or heavy rain with thunder') {
      return 'assets/weather/64x64/night/389.png';
    } else if (weatherStateName == 'Patchy light snow with thunder') {
      return 'assets/weather/64x64/night/392.png';
    } else if (weatherStateName == 'Moderate or heavy snow with thunder') {
      return 'assets/weather/64x64/night/395.png';
    } else {
      return 'assets/weather/64x64/night/113.png';
    }
  }

 MaterialColor getTheme() {
    if (weatherStateName == 'Sunny') {
      return Colors.amber;
    } else if (weatherStateName == 'Partly cloudy') {
      return Colors.lightBlue;
    } else if (weatherStateName == 'Cloudy') {
      return Colors.blue;
    } else if (weatherStateName == 'Overcast') {
      return Colors.grey;
    } else if (weatherStateName == 'Patchy rain possible') {
      return Colors.blue;
    } else if (weatherStateName == 'Patchy snow possible') {
      return Colors.blue;
    } else if (weatherStateName == 'Patchy sleet possible') {
      return Colors.blue;
    } else if (weatherStateName == 'Patchy freezing drizzle possible') {
      return Colors.blue;
    } else if (weatherStateName == 'Thundery outbreaks possible') {
      return Colors.blue;
    } else if (weatherStateName == 'Blowing snow') {
      return Colors.blue;
    } else if (weatherStateName == 'Blizzard') {
      return Colors.blue;
    } else if (weatherStateName == 'Fog') {
      return Colors.blue;
    } else if (weatherStateName == 'Freezing fog') {
      return Colors.blue;
    } else if (weatherStateName == 'Patchy light drizzle') {
      return Colors.blue;
    } else if (weatherStateName == 'Light drizzle') {
      return Colors.blue;
    } else if (weatherStateName == 'Freezing drizzle') {
      return Colors.blue;
    } else if (weatherStateName == 'Heavy freezing drizzle"') {
      return Colors.blue;
    } else if (weatherStateName == 'Patchy light rain"') {
      return Colors.blue;
    } else if (weatherStateName == 'Light rain') {
      return Colors.blue;
    } else if (weatherStateName == 'Moderate rain') {
      return Colors.blue;
    } else if (weatherStateName == 'Heavy rain at times') {
      return Colors.blue;
    } else if (weatherStateName == 'Heavy rain') {
      return Colors.blue;
    } else if (weatherStateName == 'Light freezing rain') {
      return Colors.blue;
    } else if (weatherStateName == 'Moderate or heavy freezing rain') {
      return Colors.blue;
    } else if (weatherStateName == 'Light sleet') {
      return Colors.blue;
    } else if (weatherStateName == 'Moderate or heavy sleet') {
      return Colors.blue;
    } else if (weatherStateName == 'Patchy light snow') {
      return Colors.blue;
    } else if (weatherStateName == 'Light snow') {
      return Colors.blue;
    } else if (weatherStateName == 'Patchy moderate snow') {
      return Colors.blue;
    } else if (weatherStateName == 'Moderate snow') {
      return Colors.blue;
    } else if (weatherStateName == 'Patchy heavy snow') {
      return Colors.blue;
    } else if (weatherStateName == 'Heavy snow') {
      return Colors.blue;
    } else if (weatherStateName == 'Ice pellets') {
      return Colors.blue;
    } else if (weatherStateName == 'Light rain shower') {
      return Colors.blue;
    } else if (weatherStateName == 'Moderate or heavy rain shower') {
      return Colors.blue;
    } else if (weatherStateName == 'Torrential rain shower') {
      return Colors.blue;
    } else if (weatherStateName == 'Light sleet showers') {
      return Colors.blue;
    } else if (weatherStateName == 'Moderate or heavy sleet showers') {
      return Colors.blue;
    } else if (weatherStateName == 'Light snow showers') {
      return Colors.blue;
    } else if (weatherStateName == 'Moderate or heavy snow showers') {
      return Colors.blue;
    } else if (weatherStateName == 'Light showers of ice pellets') {
      return Colors.blue;
    } else if (weatherStateName == 'Moderate or heavy showers of ice pellets') {
      return Colors.blue;
    } else if (weatherStateName == 'Patchy light rain with thunder') {
      return Colors.blue;
    } else if (weatherStateName == 'Moderate or heavy rain with thunder') {
      return Colors.blue;
    } else if (weatherStateName == 'Patchy light snow with thunder') {
      return Colors.blue;
    } else if (weatherStateName == 'Moderate or heavy snow with thunder') {
      return Colors.blue;
    } else {
      return Colors.blue;
    }
  }
}
