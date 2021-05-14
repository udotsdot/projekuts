import 'package:flutter/material.dart';
import 'package:projekuts/screen/login.dart';

import 'login.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool _checkbox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
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
                margin: EdgeInsets.only(top: 5),
                child: Image.asset(
                  "assets/images/logo.png",
                  width: 134,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Text(
                  "Register",
                  style: TextStyle(fontSize: 64, color: Colors.white),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, bottom: 10),
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
                margin: EdgeInsets.only(top: 10, bottom: 10),
                child: Text(
                  "Re-Password",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
              Container(
                width: 300,
                height: 40,
                margin: EdgeInsets.only(bottom: 10),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Checkbox(
                    activeColor: Colors.white,
                    checkColor: Color.fromRGBO(21, 141, 202, 1),
                    value: _checkbox,
                    onChanged: (value) {
                      setState(() {
                        _checkbox = !_checkbox;
                      });
                    },
                  ),
                  Text(
                    'I agree to the terms,conditions\n and privacy that apply',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromRGBO(21, 141, 202, 1),
                    ),
                  ),
                ],
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
                      MaterialPageRoute(builder: (context) => Login()),
                    );
                  },
                  child: Center(
                    child: Text(
                      "Register",
                      style: TextStyle(
                        fontSize: 20,
                        color: Color.fromRGBO(21, 141, 202, 1),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                  padding: const EdgeInsets.only(right: 0, left: 0),
                  height: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      color: Color.fromRGBO(39, 169, 141, 1)),
                  child: Center(
                    child: Text(
                      "Go Travel",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ))
            ],
          ),
        ]),
      ),
    );
  }
}
