import 'package:flutter/material.dart';
import 'package:merscedes_car/view/SplashScreen.dart';
import 'package:merscedes_car/view/carPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: CarPage(),
      ),
    );
  }
}
