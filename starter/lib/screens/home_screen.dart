import 'package:flutter/material.dart';
import 'package:starter/widgets/location_date_widget.dart';
import 'package:starter/widgets/property_list_tile.dart';
import 'package:starter/widgets/temperature_description_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(254, 227, 188, 1),
              Color.fromRGBO(243, 152, 118, 1),
            ],
            begin: AlignmentDirectional.topStart,
            end: Alignment.bottomRight,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30.0,
              vertical: 18.0,
            ),
            child: DefaultTabController(
              length: 2,
              child: Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    LocationDateWidget(
                      state: 'Lagos',
                      date: DateTime.now(),
                    ),
                    Flexible(
                      flex: 3,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(
                            child: Image.asset(
                              'images/cloudy_day.png',
                            ),
                          ),
                          const TemperatureDescriptionStatus(
                            temperature: 23,
                            description: 'Cloudy',
                          ),
                        ],
                      ),
                    ),
                    PropertyListTile(
                      title: 'Wind',
                      image: 'images/wind_icon.png',
                      value: '30 m / s',
                      color: Colors.red[900]!,
                    ),
                    const SizedBox(height: 14),
                    PropertyListTile(
                      title: 'Humidity',
                      image: 'images/humidity_icon.png',
                      value: '500',
                      color: Colors.blue[600]!,
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
