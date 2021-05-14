import 'package:flutter/material.dart';
import 'package:projekuts/screen/register.dart';
import 'package:projekuts/screen/status.dart';

class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(21, 141, 202, 1),
        elevation: 0,
        title: Container(
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
              size: 36.0,
            ),
          ),
        ),
      ),
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
          Container(
            margin: EdgeInsets.only(top: 40, bottom: 20),
            alignment: Alignment.center,
            child: Text(
              "ACCOUNT",
              style: TextStyle(fontSize: 45, color: Colors.white),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 15, left: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: Colors.white,
            ),
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 15),
                  child: Icon(
                    Icons.account_circle,
                    color: Color.fromRGBO(107, 201, 249, 1),
                    size: 80.0,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 75, left: 30),
                  child: Row(
                    children: [
                      Icon(
                        Icons.account_circle,
                        color: Color.fromRGBO(107, 201, 249, 1),
                        size: 50,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Brayblue",
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Color.fromRGBO(21, 141, 202, 1)),
                            ),
                            Container(
                              color: Color.fromRGBO(107, 201, 249, 1),
                              height: 1,
                              width: 250,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20, left: 30),
                  child: Row(
                    children: [
                      Icon(
                        Icons.add_call,
                        color: Color.fromRGBO(107, 201, 249, 1),
                        size: 50,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "0323126513",
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Color.fromRGBO(21, 141, 202, 1)),
                            ),
                            Container(
                              color: Color.fromRGBO(107, 201, 249, 1),
                              height: 1,
                              width: 250,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20, left: 30),
                  child: Row(
                    children: [
                      Icon(
                        Icons.business_center_sharp,
                        color: Color.fromRGBO(107, 201, 249, 1),
                        size: 50,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Driver",
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Color.fromRGBO(21, 141, 202, 1)),
                            ),
                            Container(
                              color: Color.fromRGBO(107, 201, 249, 1),
                              height: 1,
                              width: 250,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20, left: 30),
                  child: Row(
                    children: [
                      Icon(
                        Icons.credit_card,
                        color: Color.fromRGBO(107, 201, 249, 1),
                        size: 50,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "3332 2323 1215 1213",
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Color.fromRGBO(21, 141, 202, 1)),
                            ),
                            Container(
                              color: Color.fromRGBO(107, 201, 249, 1),
                              height: 1,
                              width: 250,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
