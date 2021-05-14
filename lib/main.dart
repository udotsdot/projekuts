import 'package:flutter/material.dart';
import 'package:projekuts/screen/login.dart';
import 'package:projekuts/screen/register.dart';
import 'package:projekuts/screen/splashscreen.dart';

// import 'package:stock_id/screens/home/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Register',
      debugShowCheckedModeBanner: false,
      home: Splashscreen(),
    );
  }
}
