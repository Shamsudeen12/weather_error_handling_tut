import 'package:flutter/material.dart';

class TemperatureDescriptionStatus extends StatelessWidget {
  final int temperature;
  final String description;

  const TemperatureDescriptionStatus({
    super.key,
    required this.temperature,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            Text(
              temperature.toString(),
              style: const TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              description,
              style: const TextStyle(
                color: Color.fromRGBO(49, 51, 65, 100),
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
        const Text(
          'º C',
          style: TextStyle(
            fontSize: 20,
            color: Color.fromRGBO(49, 51, 65, 100),
          ),
        ),
      ],
    );
  }
}
