import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/providers/weather_provider.dart';
import 'package:weather_app/services/weather_service.dart';

class SearchPage extends StatelessWidget {
  SearchPage({this.updateUi});
  String? cityName;
  VoidCallback? updateUi;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Search a city',
        ),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Center(
            child: TextField(
              onSubmitted: (value) async {
                cityName = value;
                Weather_Service service = Weather_Service();
                WeatherModel? weather =
                    await service.getweather(cityName: cityName!);
                Provider.of<WeatherProvider>(context, listen: false)
                    .weatherData = weather;
                Provider.of<WeatherProvider>(context, listen: false)
                            .weatherData
                            ?.name ==
                        null
                    ? ''
                    : cityName;
                updateUi!();
                Navigator.pop(context);
              },
              decoration: InputDecoration(
                  suffixIcon: Icon(Icons.search),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 32, horizontal: 24),
                  labelText: 'search',
                  hintText: 'Enter a city',
                  border: OutlineInputBorder()),
            ),
          ),
        ),
      ),
    );
  }
}
