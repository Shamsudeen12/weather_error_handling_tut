import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:starter/presentation/screens/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await dotenv.load(fileName: 'config.env');
  await Permission.locationWhenInUse.request();
  var status = await Geolocator.requestPermission();

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
