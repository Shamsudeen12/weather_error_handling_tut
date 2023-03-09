import 'package:flutter/material.dart';
import 'package:starter/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather Error Handling',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'MontserratAlternates',
      ),
      home: const HomeScreen(),
    );
  }
}
