import 'package:flutter/material.dart';
import 'package:projekuts/screen/home/drawer.dart';
import 'package:projekuts/screen/register.dart';
import 'package:projekuts/screen/status.dart';

class Mainmenu extends StatefulWidget {
  @override
  _MainmenuState createState() => _MainmenuState();
}

class _MainmenuState extends State<Mainmenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(21, 141, 202, 1),
        elevation: 0,
        title: Container(
            width: 300,
            height: 40,
            margin: EdgeInsets.only(top: 5, bottom: 5),
            child: TextField(
              obscureText: false,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                      borderSide: BorderSide(color: Colors.blueAccent)),
                  hintText: 'Search',
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
                  prefixIcon: Icon(Icons.search),
                  filled: true,
                  fillColor: Colors.white),
            )),
      ),
      drawer: Drawer(child: Drawers()),
      body: Container(),
    );
  }
}
