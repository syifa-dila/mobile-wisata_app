import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:wisata_app/detail_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen([Key? key]) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'images/logo.png',
            width: 300,
          ),
          const Text(
            'wisata App',
            style: TextStyle(
                fontSize: 35, color: Color.fromARGB(255, 166, 179, 207)),
          ),
        ],
      ),
      splashIconSize: 400,
      splashTransition: SplashTransition.fadeTransition,
      duration: 3000,
      backgroundColor: Color.fromARGB(255, 111, 85, 145),
      nextScreen: const DetailScreen(),
    );
  }
}
