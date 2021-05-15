import 'package:flutter/material.dart';
import 'package:projekuts/screen/home/home_screen.dart';
import 'package:projekuts/screen/register.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromRGBO(21, 141, 202, 1),
            Color.fromRGBO(96, 245, 210, 1),
          ],
        )),
        child: ListView(children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 50, bottom: 20),
                child: Text(
                  "LOGIN",
                  style: TextStyle(fontSize: 64, color: Colors.white),
                ),
              ),
              Image.asset(
                "assets/images/logo.png",
                width: 134,
              ),
              Container(
                margin: EdgeInsets.only(top: 50, bottom: 10),
                child: Text(
                  "Username",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
              Container(
                width: 300,
                height: 40,
                child: TextFormField(
                  style: new TextStyle(
                      fontWeight: FontWeight.normal, color: Colors.black),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50.0)),
                        borderSide: BorderSide(color: Colors.white)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50.0)),
                        borderSide: BorderSide(color: Colors.white)),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, bottom: 10),
                child: Text(
                  "Password",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
              Container(
                width: 300,
                height: 40,
                child: TextFormField(
                  style: new TextStyle(
                      fontWeight: FontWeight.normal, color: Colors.black),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50.0)),
                        borderSide: BorderSide(color: Colors.white24)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50.0)),
                        borderSide: BorderSide(color: Colors.white24)),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20, bottom: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    color: Colors.white),
                height: 45,
                width: 100,
                child: InkWell(
                  splashColor: Colors.white,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Mainmenu()),
                    );
                  },
                  child: Center(
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 20,
                        color: Color.fromRGBO(21, 141, 202, 1),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 15),
                child: Text(
                  "Don't Have an account yet ?",
                  style: TextStyle(
                    fontSize: 18,
                    color: Color.fromRGBO(21, 141, 202, 1),
                  ),
                ),
              ),
              Container(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Register()),
                    );
                  },
                  child: Center(
                    child: Text(
                      "Sign Up!",
                      style: TextStyle(
                        fontSize: 22,
                        color: Color.fromRGBO(21, 141, 202, 1),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ]),
      ),
    );
  }
}
