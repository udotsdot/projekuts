import 'package:flutter/material.dart';
import 'package:projekuts/screen/login.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

class Splashscreen extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splashscreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AnimatedSplashScreen(
        splash: Container(
          child: Image.asset(
            "assets/images/logo.png",
            width: 300,
          ),
        ),
        nextScreen: Login(),
        splashTransition: SplashTransition.rotationTransition,
        backgroundColor: Color.fromRGBO(58, 187, 205, 0.5),
        duration: 10,
        splashIconSize: 250,
      ),
    );
  }
}
