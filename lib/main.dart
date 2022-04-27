import 'package:flutter/material.dart';
import 'package:tapp/screens/bmi_screen.dart';
import 'package:tapp/screens/intro_screen.dart';
import 'package:tapp/screens/weather_screen.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      routes: {
        '/': (context) => IntroScreen(),
        '/bmi': (context) => BmiScreen(),
        '/weather': (context) => WeatherScreen(),
      },
      initialRoute: '/',
    );
  }
}
