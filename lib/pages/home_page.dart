import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/pages/search_page.dart';
import 'package:weather_app/providers/weather_provider.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  WeatherModel? weatherData;
  void updateUi() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    weatherData = Provider.of<WeatherProvider>(context).weatherData;
    return Scaffold(
      appBar: AppBar(
        title: Text('Weather App'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return SearchPage(
                    updateUi: updateUi,
                  );
                },
              ));
            },
            icon: Icon(Icons.search),
          ),
        ],
      ),
      body: weatherData == null
          ? Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'there is no weather 😔 start',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  Text(
                    'searching now 🔍',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  )
                ],
              ),
            )
          : Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  weatherData!.getTheme(),
                  weatherData!.getTheme()[300]!,
                  weatherData!.getTheme()[100]!,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              )
            ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Spacer(
                      flex: 3,
                    ),
                    Text(
                      weatherData!.name ?? '',
                      style:
                          TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Updated at : ${weatherData!.date!.hour.toString()}:${weatherData!.date!.minute.toString()}',
                      style: TextStyle(fontSize: 22),
                    ),
                    Spacer(
                      flex: 1,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 35),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          if (weatherData!.date!.hour.toInt() >= 5 &&
                              weatherData!.date!.hour.toInt() <= 17)
                            Image.asset(
                              weatherData!.getImageDay(),
                              width: 120,
                              height: 120,
                              fit: BoxFit.contain,
                            )
                          else
                            Image.asset(
                              weatherData!.getImageNight(),
                              width: 120,
                              height: 120,
                              fit: BoxFit.contain,
                            ),
                          Text(
                            weatherData!.temp!.toInt().toString(),
                            style: TextStyle(
                                fontSize: 32, fontWeight: FontWeight.bold),
                          ),
                          Column(
                            children: [
                              Text('maxTemp: ${weatherData!.maxtemp!.toInt()}'),
                              Text('minTemp: ${weatherData!.mintemp!.toInt()}'),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Spacer(
                      flex: 1,
                    ),
                    Text(
                      weatherData?.weatherStateName.toString() ?? '',
                      style:
                          TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                    ),
                    Spacer(
                      flex: 5,
                    ),
                  ]),
            ),
    );
  }
}
