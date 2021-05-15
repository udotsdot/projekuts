import 'package:flutter/material.dart';
import 'package:projekuts/screen/accountseting.dart';
import 'package:projekuts/screen/home/home_screen.dart';
import 'package:projekuts/screen/login.dart';
import 'package:projekuts/screen/payment.dart';
import 'package:projekuts/screen/register.dart';
import 'package:projekuts/screen/status.dart';
import 'package:projekuts/screen/wishlist.dart';

class Drawers extends StatefulWidget {
  @override
  _DrawersState createState() => _DrawersState();
}

class _DrawersState extends State<Drawers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 50),
            child: ListTile(
              leading: Icon(
                Icons.account_circle,
                color: Color.fromRGBO(107, 201, 249, 1),
                size: 60.0,
              ),
              title: Text(
                "Brayblue",
                style: TextStyle(
                    fontSize: 20, color: Color.fromRGBO(21, 141, 202, 1)),
              ),
              subtitle: Text(
                "Driver",
                style: TextStyle(
                    fontSize: 15, color: Color.fromRGBO(21, 141, 202, 1)),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Payment()),
                );
              },
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 20,
            ),
            color: Color.fromRGBO(107, 201, 249, 1),
            height: 1,
            width: 250,
          ),
          Container(
            margin: EdgeInsets.only(top: 20, bottom: 20),
            child: ListTile(
              leading: Icon(
                Icons.home_rounded,
                color: Color.fromRGBO(107, 201, 249, 1),
                size: 50,
              ),
              title: Text(
                "Home",
                style: TextStyle(
                    fontSize: 20, color: Color.fromRGBO(21, 141, 202, 1)),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Mainmenu()),
                );
              },
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 20),
            child: ListTile(
              leading: Icon(
                Icons.brightness_5,
                color: Color.fromRGBO(107, 201, 249, 1),
                size: 50,
              ),
              title: Text(
                "Account",
                style: TextStyle(
                    fontSize: 20, color: Color.fromRGBO(21, 141, 202, 1)),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Account()),
                );
              },
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 20),
            child: ListTile(
              leading: Icon(
                Icons.favorite,
                color: Color.fromRGBO(107, 201, 249, 1),
                size: 50,
              ),
              title: Text(
                "Whislist",
                style: TextStyle(
                    fontSize: 20, color: Color.fromRGBO(21, 141, 202, 1)),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Whislist()),
                );
              },
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 20),
            child: ListTile(
              leading: Icon(
                Icons.done_outline,
                color: Color.fromRGBO(107, 201, 249, 1),
                size: 50,
              ),
              title: Text(
                "Status",
                style: TextStyle(
                    fontSize: 20, color: Color.fromRGBO(21, 141, 202, 1)),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Status()),
                );
              },
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: Color.fromRGBO(21, 141, 202, 1),
            ),
            margin: EdgeInsets.only(top: 40, left: 30, right: 30),
            child: ListTile(
              leading: Icon(
                Icons.zoom_out_map,
                color: Color.fromRGBO(107, 201, 249, 1),
                size: 50,
              ),
              title: Text(
                "Logout",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Login()),
                );
              },
            ),
          ),
          Image.asset(
            "assets/images/logo.png",
            width: 100,
          ),
        ],
      )),
    );
  }
}
