import 'package:flutter/material.dart';
import 'package:projekuts/screen/accountseting.dart';

class Status extends StatefulWidget {
  @override
  _StatusState createState() => _StatusState();
}

class _StatusState extends State<Status> {
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
        child: ListView(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 40, top: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Status",
                    style: TextStyle(fontSize: 34, color: Colors.white),
                  ),
                  Text(
                    "Menampilkan Mobil Yang Sedang Dirental",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Color.fromRGBO(21, 141, 202, 1),
              ),
              margin: EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 5),
                        child: Image.asset(
                          "assets/images/car.png",
                          width: 180,
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(top: 5, left: 30),
                          child: Text(
                            "Mustang GT",
                            style: TextStyle(fontSize: 24, color: Colors.white),
                          )),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    child: Text(
                      "Order Time : 01-01-2021",
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, bottom: 30),
                    child: Text(
                      "Return Time : 07-01-2021",
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
