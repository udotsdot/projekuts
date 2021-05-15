import 'package:flutter/material.dart';
import 'package:projekuts/screen/accountseting.dart';
import 'package:projekuts/screen/home/home_screen.dart';
import 'package:projekuts/screen/login.dart';
import 'package:projekuts/screen/payment.dart';
import 'package:projekuts/screen/register.dart';
import 'package:projekuts/screen/splashscreen.dart';
import 'package:projekuts/screen/status.dart';
import 'package:projekuts/screen/wishlist.dart';

// import 'package:stock_id/screens/home/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DoRentMe',
      debugShowCheckedModeBanner: false,
      home: Splashscreen(),
    );
  }
}
