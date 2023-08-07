import 'package:flutter/material.dart';
import 'main-homPage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 10000)).then((value) {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) => homePage()));
    });
  }

  double turns = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Text("کلیک"),
      backgroundColor: const Color.fromARGB(255, 15, 15, 15),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
              child: AnimatedRotation(
                duration: const Duration(seconds: 25),
                turns: turns,
                child: Image.asset(
                  "assets/img/logoMercedes.png",
                  height: 85,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
