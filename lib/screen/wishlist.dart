import 'package:flutter/material.dart';

class Whislist extends StatefulWidget {
  @override
  _WhislistState createState() => _WhislistState();
}

class _WhislistState extends State<Whislist> {
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
                  Container(
                      width: 300,
                      height: 50,
                      margin: EdgeInsets.only(bottom: 10),
                      child: TextField(
                        obscureText: false,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                                borderSide:
                                    BorderSide(color: Colors.blueAccent)),
                            hintText: 'Search',
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 20),
                            prefixIcon: Icon(Icons.search),
                            filled: true,
                            fillColor: Colors.white),
                      )),
                ],
              ),
            ),
            Wrap(
              spacing: 5,
              alignment: WrapAlignment.center,
              children: [
                Container(
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Color.fromRGBO(21, 141, 202, 1),
                  ),
                  margin: EdgeInsets.only(
                    top: 20,
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 5),
                        child: Image.asset(
                          "assets/images/car.png",
                          width: 180,
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(top: 5, left: 5, right: 5),
                          child: Text(
                            "Mustang GT",
                            style: TextStyle(fontSize: 24, color: Colors.white),
                          )),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            child: Text(
                              "RP600.000,00",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 2, right: 5),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.more_vert,
                                color: Colors.white,
                                size: 30.0,
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Color.fromRGBO(21, 141, 202, 1),
                  ),
                  margin: EdgeInsets.only(
                    top: 20,
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 5),
                        child: Image.asset(
                          "assets/images/car.png",
                          width: 180,
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(top: 5, left: 5, right: 5),
                          child: Text(
                            "Mustang GT",
                            style: TextStyle(fontSize: 24, color: Colors.white),
                          )),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            child: Text(
                              "RP600.000,00",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 2, right: 5),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.more_vert,
                                color: Colors.white,
                                size: 30.0,
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Color.fromRGBO(21, 141, 202, 1),
                  ),
                  margin: EdgeInsets.only(
                    top: 20,
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 5),
                        child: Image.asset(
                          "assets/images/car.png",
                          width: 180,
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(top: 5, left: 5, right: 5),
                          child: Text(
                            "Mustang GT",
                            style: TextStyle(fontSize: 24, color: Colors.white),
                          )),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            child: Text(
                              "RP600.000,00",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 2, right: 5),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.more_vert,
                                color: Colors.white,
                                size: 30.0,
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Color.fromRGBO(21, 141, 202, 1),
                  ),
                  margin: EdgeInsets.only(
                    top: 20,
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 5),
                        child: Image.asset(
                          "assets/images/car.png",
                          width: 180,
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(top: 5, left: 5, right: 5),
                          child: Text(
                            "Mustang GT",
                            style: TextStyle(fontSize: 24, color: Colors.white),
                          )),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            child: Text(
                              "RP600.000,00",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 2, right: 5),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.more_vert,
                                color: Colors.white,
                                size: 30.0,
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
