import 'package:flutter/material.dart';
import 'package:projekuts/screen/home/home_screen.dart';
import 'package:projekuts/screen/register.dart';
import 'package:projekuts/screen/status.dart';

class Payment extends StatefulWidget {
  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(21, 141, 202, 1),
        elevation: 0,
        title: Container(),
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
        child: ListView(children: <Widget>[
          Container(
            margin: EdgeInsets.only(
              left: 20,
            ),
            child: Text(
              "Mustang GT",
              style: TextStyle(fontSize: 34, color: Colors.white),
            ),
          ),
          Image.asset(
            "assets/images/car.png",
            width: 80,
            height: 150,
          ),
          Container(
            margin: EdgeInsets.only(right: 15, left: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: Colors.white,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 120),
                  child: Text(
                    "Payment Method",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                  color: Color.fromRGBO(107, 201, 249, 1),
                  height: 1,
                  width: 350,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Card(
                      child: InkWell(
                        splashColor: Colors.blue.withAlpha(30),
                        onTap: () {
                          print('Card tapped.');
                        },
                        child: Image.asset(
                          "assets/images/visa.png",
                          width: 80,
                          height: 80,
                        ),
                      ),
                    ),
                    Card(
                      child: InkWell(
                        splashColor: Colors.blue.withAlpha(30),
                        onTap: () {
                          print('Card tapped.');
                        },
                        child: Image.asset(
                          "assets/images/paypal.png",
                          width: 80,
                          height: 80,
                        ),
                      ),
                    ),
                    Card(
                      child: InkWell(
                        splashColor: Colors.blue.withAlpha(30),
                        onTap: () {
                          print('Card tapped.');
                        },
                        child: Image.asset(
                          "assets/images/indomaret.png",
                          width: 80,
                          height: 80,
                        ),
                      ),
                    ),
                    Card(
                      child: InkWell(
                        splashColor: Colors.blue.withAlpha(30),
                        onTap: () {
                          print('Card tapped.');
                        },
                        child: Image.asset(
                          "assets/images/jenius.png",
                          width: 80,
                          height: 80,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                  color: Color.fromRGBO(107, 201, 249, 1),
                  height: 1,
                  width: 350,
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Price",
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        "RP500.000,00",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        "Transfer",
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        "5525-2121-215",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        "Due Date",
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.calendar_today,
                            color: Colors.black,
                            size: 25,
                          ),
                          Text(
                            "RP500.000,00",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: 20, bottom: 10, left: 150, right: 150),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      color: Color.fromRGBO(21, 141, 202, 1)),
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
                        "Pay",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
