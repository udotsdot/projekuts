import 'package:flutter/material.dart';
import 'package:projekuts/screen/detail.dart';
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
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
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
          bottomNavigationBar: TabBar(
              unselectedLabelColor: Color.fromRGBO(21, 141, 202, 1),
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Color.fromRGBO(21, 141, 202, 1)),
              tabs: [
                Tab(text: "MPV"),
                Tab(
                  text: "SUV",
                ),
                Tab(
                  text: "Sedang",
                ),
                Tab(
                  text: "Bus",
                ),
              ]),
          body: TabBarView(children: [
            ListView(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    gradient: LinearGradient(
                      begin: Alignment.centerRight,
                      end: Alignment.centerLeft,
                      colors: [
                        Color.fromRGBO(21, 141, 202, 1),
                        Color.fromRGBO(96, 245, 210, 1),
                      ],
                    ),
                  ),
                  margin: EdgeInsets.all(5),
                  child: Row(children: [
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 5),
                          child: Image.asset(
                            "assets/images/car.png",
                            width: 200,
                            height: 100,
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.all(5),
                            child: Text(
                              "Mustang GT",
                              style:
                                  TextStyle(fontSize: 24, color: Colors.white),
                            )),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                            child: Text(
                          "Cashback 20%\n7-8 Mei 2021",
                          style: TextStyle(fontSize: 24, color: Colors.white),
                        )),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 25,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 25,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 25,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 25,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 25,
                            ),
                          ],
                        ),
                      ],
                    )
                  ]),
                ),
                Wrap(
                  spacing: 5,
                  alignment: WrapAlignment.center,
                  children: [
                    Container(
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Color.fromRGBO(34, 150, 243, 1),
                      ),
                      margin: EdgeInsets.only(
                        top: 20,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(right: 5),
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Icon(
                                Icons.favorite,
                                color: Colors.blueAccent[100],
                                size: 35,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              bottom: 5,
                              right: 5,
                              left: 5,
                            ),
                            child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Detail()),
                                  );
                                },
                                child: Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 5),
                                      child: Image.asset(
                                        "assets/images/car.png",
                                        width: 200,
                                        height: 100,
                                      ),
                                    ),
                                    Container(
                                        margin: EdgeInsets.only(
                                            top: 5, left: 5, right: 5),
                                        child: Text(
                                          "Mustang GT",
                                          style: TextStyle(
                                              fontSize: 24,
                                              color: Colors.white),
                                        )),
                                  ],
                                )),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Color.fromRGBO(34, 150, 243, 1),
                      ),
                      margin: EdgeInsets.only(
                        top: 20,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(right: 5),
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Icon(
                                Icons.favorite,
                                color: Colors.blueAccent[100],
                                size: 35,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              bottom: 5,
                              right: 5,
                              left: 5,
                            ),
                            child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Detail()),
                                  );
                                },
                                child: Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 5),
                                      child: Image.asset(
                                        "assets/images/car.png",
                                        width: 200,
                                        height: 100,
                                      ),
                                    ),
                                    Container(
                                        margin: EdgeInsets.only(
                                            top: 5, left: 5, right: 5),
                                        child: Text(
                                          "Mustang GT",
                                          style: TextStyle(
                                              fontSize: 24,
                                              color: Colors.white),
                                        )),
                                  ],
                                )),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Color.fromRGBO(34, 150, 243, 1),
                      ),
                      margin: EdgeInsets.only(
                        top: 20,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(right: 5),
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Icon(
                                Icons.favorite,
                                color: Colors.blueAccent[100],
                                size: 35,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              bottom: 5,
                              right: 5,
                              left: 5,
                            ),
                            child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Detail()),
                                  );
                                },
                                child: Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 5),
                                      child: Image.asset(
                                        "assets/images/car.png",
                                        width: 200,
                                        height: 100,
                                      ),
                                    ),
                                    Container(
                                        margin: EdgeInsets.only(
                                            top: 5, left: 5, right: 5),
                                        child: Text(
                                          "Mustang GT",
                                          style: TextStyle(
                                              fontSize: 24,
                                              color: Colors.white),
                                        )),
                                  ],
                                )),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Color.fromRGBO(34, 150, 243, 1),
                      ),
                      margin: EdgeInsets.only(
                        top: 20,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(right: 5),
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Icon(
                                Icons.favorite,
                                color: Colors.blueAccent[100],
                                size: 35,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              bottom: 5,
                              right: 5,
                              left: 5,
                            ),
                            child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Detail()),
                                  );
                                },
                                child: Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 5),
                                      child: Image.asset(
                                        "assets/images/car.png",
                                        width: 200,
                                        height: 100,
                                      ),
                                    ),
                                    Container(
                                        margin: EdgeInsets.only(
                                            top: 5, left: 5, right: 5),
                                        child: Text(
                                          "Mustang GT",
                                          style: TextStyle(
                                              fontSize: 24,
                                              color: Colors.white),
                                        )),
                                  ],
                                )),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Color.fromRGBO(34, 150, 243, 1),
                      ),
                      margin: EdgeInsets.only(
                        top: 20,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(right: 5),
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Icon(
                                Icons.favorite,
                                color: Colors.blueAccent[100],
                                size: 35,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              bottom: 5,
                              right: 5,
                              left: 5,
                            ),
                            child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Detail()),
                                  );
                                },
                                child: Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 5),
                                      child: Image.asset(
                                        "assets/images/car.png",
                                        width: 200,
                                        height: 100,
                                      ),
                                    ),
                                    Container(
                                        margin: EdgeInsets.only(
                                            top: 5, left: 5, right: 5),
                                        child: Text(
                                          "Mustang GT",
                                          style: TextStyle(
                                              fontSize: 24,
                                              color: Colors.white),
                                        )),
                                  ],
                                )),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            ListView(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    gradient: LinearGradient(
                      begin: Alignment.centerRight,
                      end: Alignment.centerLeft,
                      colors: [
                        Color.fromRGBO(21, 141, 202, 1),
                        Color.fromRGBO(96, 245, 210, 1),
                      ],
                    ),
                  ),
                  margin: EdgeInsets.all(5),
                  child: Row(children: [
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 5),
                          child: Image.asset(
                            "assets/images/car.png",
                            width: 200,
                            height: 100,
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.all(5),
                            child: Text(
                              "Mustang GT",
                              style:
                                  TextStyle(fontSize: 24, color: Colors.white),
                            )),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                            child: Text(
                          "Cashback 20%\n7-8 Mei 2021",
                          style: TextStyle(fontSize: 24, color: Colors.white),
                        )),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 25,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 25,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 25,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 25,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 25,
                            ),
                          ],
                        ),
                      ],
                    )
                  ]),
                ),
                Wrap(
                  spacing: 5,
                  alignment: WrapAlignment.center,
                  children: [
                    Container(
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Color.fromRGBO(34, 150, 243, 1),
                      ),
                      margin: EdgeInsets.only(
                        top: 20,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(right: 5),
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Icon(
                                Icons.favorite,
                                color: Colors.blueAccent[100],
                                size: 35,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              bottom: 5,
                              right: 5,
                              left: 5,
                            ),
                            child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Detail()),
                                  );
                                },
                                child: Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 5),
                                      child: Image.asset(
                                        "assets/images/car.png",
                                        width: 200,
                                        height: 100,
                                      ),
                                    ),
                                    Container(
                                        margin: EdgeInsets.only(
                                            top: 5, left: 5, right: 5),
                                        child: Text(
                                          "Mustang GT",
                                          style: TextStyle(
                                              fontSize: 24,
                                              color: Colors.white),
                                        )),
                                  ],
                                )),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Color.fromRGBO(34, 150, 243, 1),
                      ),
                      margin: EdgeInsets.only(
                        top: 20,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(right: 5),
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Icon(
                                Icons.favorite,
                                color: Colors.blueAccent[100],
                                size: 35,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              bottom: 5,
                              right: 5,
                              left: 5,
                            ),
                            child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Detail()),
                                  );
                                },
                                child: Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 5),
                                      child: Image.asset(
                                        "assets/images/car.png",
                                        width: 200,
                                        height: 100,
                                      ),
                                    ),
                                    Container(
                                        margin: EdgeInsets.only(
                                            top: 5, left: 5, right: 5),
                                        child: Text(
                                          "Mustang GT",
                                          style: TextStyle(
                                              fontSize: 24,
                                              color: Colors.white),
                                        )),
                                  ],
                                )),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Color.fromRGBO(34, 150, 243, 1),
                      ),
                      margin: EdgeInsets.only(
                        top: 20,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(right: 5),
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Icon(
                                Icons.favorite,
                                color: Colors.blueAccent[100],
                                size: 35,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              bottom: 5,
                              right: 5,
                              left: 5,
                            ),
                            child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Detail()),
                                  );
                                },
                                child: Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 5),
                                      child: Image.asset(
                                        "assets/images/car.png",
                                        width: 200,
                                        height: 100,
                                      ),
                                    ),
                                    Container(
                                        margin: EdgeInsets.only(
                                            top: 5, left: 5, right: 5),
                                        child: Text(
                                          "Mustang GT",
                                          style: TextStyle(
                                              fontSize: 24,
                                              color: Colors.white),
                                        )),
                                  ],
                                )),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Color.fromRGBO(34, 150, 243, 1),
                      ),
                      margin: EdgeInsets.only(
                        top: 20,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(right: 5),
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Icon(
                                Icons.favorite,
                                color: Colors.blueAccent[100],
                                size: 35,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              bottom: 5,
                              right: 5,
                              left: 5,
                            ),
                            child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Detail()),
                                  );
                                },
                                child: Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 5),
                                      child: Image.asset(
                                        "assets/images/car.png",
                                        width: 200,
                                        height: 100,
                                      ),
                                    ),
                                    Container(
                                        margin: EdgeInsets.only(
                                            top: 5, left: 5, right: 5),
                                        child: Text(
                                          "Mustang GT",
                                          style: TextStyle(
                                              fontSize: 24,
                                              color: Colors.white),
                                        )),
                                  ],
                                )),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Color.fromRGBO(34, 150, 243, 1),
                      ),
                      margin: EdgeInsets.only(
                        top: 20,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(right: 5),
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Icon(
                                Icons.favorite,
                                color: Colors.blueAccent[100],
                                size: 35,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              bottom: 5,
                              right: 5,
                              left: 5,
                            ),
                            child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Detail()),
                                  );
                                },
                                child: Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 5),
                                      child: Image.asset(
                                        "assets/images/car.png",
                                        width: 200,
                                        height: 100,
                                      ),
                                    ),
                                    Container(
                                        margin: EdgeInsets.only(
                                            top: 5, left: 5, right: 5),
                                        child: Text(
                                          "Mustang GT",
                                          style: TextStyle(
                                              fontSize: 24,
                                              color: Colors.white),
                                        )),
                                  ],
                                )),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            ListView(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    gradient: LinearGradient(
                      begin: Alignment.centerRight,
                      end: Alignment.centerLeft,
                      colors: [
                        Color.fromRGBO(21, 141, 202, 1),
                        Color.fromRGBO(96, 245, 210, 1),
                      ],
                    ),
                  ),
                  margin: EdgeInsets.all(5),
                  child: Row(children: [
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 5),
                          child: Image.asset(
                            "assets/images/car.png",
                            width: 200,
                            height: 100,
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.all(5),
                            child: Text(
                              "Mustang GT",
                              style:
                                  TextStyle(fontSize: 24, color: Colors.white),
                            )),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                            child: Text(
                          "Cashback 20%\n7-8 Mei 2021",
                          style: TextStyle(fontSize: 24, color: Colors.white),
                        )),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 25,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 25,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 25,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 25,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 25,
                            ),
                          ],
                        ),
                      ],
                    )
                  ]),
                ),
                Wrap(
                  spacing: 5,
                  alignment: WrapAlignment.center,
                  children: [
                    Container(
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Color.fromRGBO(34, 150, 243, 1),
                      ),
                      margin: EdgeInsets.only(
                        top: 20,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(right: 5),
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Icon(
                                Icons.favorite,
                                color: Colors.blueAccent[100],
                                size: 35,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              bottom: 5,
                              right: 5,
                              left: 5,
                            ),
                            child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Detail()),
                                  );
                                },
                                child: Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 5),
                                      child: Image.asset(
                                        "assets/images/car.png",
                                        width: 200,
                                        height: 100,
                                      ),
                                    ),
                                    Container(
                                        margin: EdgeInsets.only(
                                            top: 5, left: 5, right: 5),
                                        child: Text(
                                          "Mustang GT",
                                          style: TextStyle(
                                              fontSize: 24,
                                              color: Colors.white),
                                        )),
                                  ],
                                )),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Color.fromRGBO(34, 150, 243, 1),
                      ),
                      margin: EdgeInsets.only(
                        top: 20,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(right: 5),
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Icon(
                                Icons.favorite,
                                color: Colors.blueAccent[100],
                                size: 35,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              bottom: 5,
                              right: 5,
                              left: 5,
                            ),
                            child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Detail()),
                                  );
                                },
                                child: Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 5),
                                      child: Image.asset(
                                        "assets/images/car.png",
                                        width: 200,
                                        height: 100,
                                      ),
                                    ),
                                    Container(
                                        margin: EdgeInsets.only(
                                            top: 5, left: 5, right: 5),
                                        child: Text(
                                          "Mustang GT",
                                          style: TextStyle(
                                              fontSize: 24,
                                              color: Colors.white),
                                        )),
                                  ],
                                )),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Color.fromRGBO(34, 150, 243, 1),
                      ),
                      margin: EdgeInsets.only(
                        top: 20,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(right: 5),
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Icon(
                                Icons.favorite,
                                color: Colors.blueAccent[100],
                                size: 35,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              bottom: 5,
                              right: 5,
                              left: 5,
                            ),
                            child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Detail()),
                                  );
                                },
                                child: Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 5),
                                      child: Image.asset(
                                        "assets/images/car.png",
                                        width: 200,
                                        height: 100,
                                      ),
                                    ),
                                    Container(
                                        margin: EdgeInsets.only(
                                            top: 5, left: 5, right: 5),
                                        child: Text(
                                          "Mustang GT",
                                          style: TextStyle(
                                              fontSize: 24,
                                              color: Colors.white),
                                        )),
                                  ],
                                )),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Color.fromRGBO(34, 150, 243, 1),
                      ),
                      margin: EdgeInsets.only(
                        top: 20,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(right: 5),
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Icon(
                                Icons.favorite,
                                color: Colors.blueAccent[100],
                                size: 35,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              bottom: 5,
                              right: 5,
                              left: 5,
                            ),
                            child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Detail()),
                                  );
                                },
                                child: Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 5),
                                      child: Image.asset(
                                        "assets/images/car.png",
                                        width: 200,
                                        height: 100,
                                      ),
                                    ),
                                    Container(
                                        margin: EdgeInsets.only(
                                            top: 5, left: 5, right: 5),
                                        child: Text(
                                          "Mustang GT",
                                          style: TextStyle(
                                              fontSize: 24,
                                              color: Colors.white),
                                        )),
                                  ],
                                )),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Color.fromRGBO(34, 150, 243, 1),
                      ),
                      margin: EdgeInsets.only(
                        top: 20,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(right: 5),
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Icon(
                                Icons.favorite,
                                color: Colors.blueAccent[100],
                                size: 35,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              bottom: 5,
                              right: 5,
                              left: 5,
                            ),
                            child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Detail()),
                                  );
                                },
                                child: Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 5),
                                      child: Image.asset(
                                        "assets/images/car.png",
                                        width: 200,
                                        height: 100,
                                      ),
                                    ),
                                    Container(
                                        margin: EdgeInsets.only(
                                            top: 5, left: 5, right: 5),
                                        child: Text(
                                          "Mustang GT",
                                          style: TextStyle(
                                              fontSize: 24,
                                              color: Colors.white),
                                        )),
                                  ],
                                )),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            ListView(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    gradient: LinearGradient(
                      begin: Alignment.centerRight,
                      end: Alignment.centerLeft,
                      colors: [
                        Color.fromRGBO(21, 141, 202, 1),
                        Color.fromRGBO(96, 245, 210, 1),
                      ],
                    ),
                  ),
                  margin: EdgeInsets.all(5),
                  child: Row(children: [
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 5),
                          child: Image.asset(
                            "assets/images/car.png",
                            width: 200,
                            height: 100,
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.all(5),
                            child: Text(
                              "Mustang GT",
                              style:
                                  TextStyle(fontSize: 24, color: Colors.white),
                            )),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                            child: Text(
                          "Cashback 20%\n7-8 Mei 2021",
                          style: TextStyle(fontSize: 24, color: Colors.white),
                        )),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 25,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 25,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 25,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 25,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 25,
                            ),
                          ],
                        ),
                      ],
                    )
                  ]),
                ),
                Wrap(
                  spacing: 5,
                  alignment: WrapAlignment.center,
                  children: [
                    Container(
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Color.fromRGBO(34, 150, 243, 1),
                      ),
                      margin: EdgeInsets.only(
                        top: 20,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(right: 5),
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Icon(
                                Icons.favorite,
                                color: Colors.blueAccent[100],
                                size: 35,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              bottom: 5,
                              right: 5,
                              left: 5,
                            ),
                            child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Detail()),
                                  );
                                },
                                child: Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 5),
                                      child: Image.asset(
                                        "assets/images/car.png",
                                        width: 200,
                                        height: 100,
                                      ),
                                    ),
                                    Container(
                                        margin: EdgeInsets.only(
                                            top: 5, left: 5, right: 5),
                                        child: Text(
                                          "Mustang GT",
                                          style: TextStyle(
                                              fontSize: 24,
                                              color: Colors.white),
                                        )),
                                  ],
                                )),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Color.fromRGBO(34, 150, 243, 1),
                      ),
                      margin: EdgeInsets.only(
                        top: 20,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(right: 5),
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Icon(
                                Icons.favorite,
                                color: Colors.blueAccent[100],
                                size: 35,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              bottom: 5,
                              right: 5,
                              left: 5,
                            ),
                            child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Detail()),
                                  );
                                },
                                child: Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 5),
                                      child: Image.asset(
                                        "assets/images/car.png",
                                        width: 200,
                                        height: 100,
                                      ),
                                    ),
                                    Container(
                                        margin: EdgeInsets.only(
                                            top: 5, left: 5, right: 5),
                                        child: Text(
                                          "Mustang GT",
                                          style: TextStyle(
                                              fontSize: 24,
                                              color: Colors.white),
                                        )),
                                  ],
                                )),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Color.fromRGBO(34, 150, 243, 1),
                      ),
                      margin: EdgeInsets.only(
                        top: 20,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(right: 5),
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Icon(
                                Icons.favorite,
                                color: Colors.blueAccent[100],
                                size: 35,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              bottom: 5,
                              right: 5,
                              left: 5,
                            ),
                            child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Detail()),
                                  );
                                },
                                child: Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 5),
                                      child: Image.asset(
                                        "assets/images/car.png",
                                        width: 200,
                                        height: 100,
                                      ),
                                    ),
                                    Container(
                                        margin: EdgeInsets.only(
                                            top: 5, left: 5, right: 5),
                                        child: Text(
                                          "Mustang GT",
                                          style: TextStyle(
                                              fontSize: 24,
                                              color: Colors.white),
                                        )),
                                  ],
                                )),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Color.fromRGBO(34, 150, 243, 1),
                      ),
                      margin: EdgeInsets.only(
                        top: 20,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(right: 5),
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Icon(
                                Icons.favorite,
                                color: Colors.blueAccent[100],
                                size: 35,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              bottom: 5,
                              right: 5,
                              left: 5,
                            ),
                            child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Detail()),
                                  );
                                },
                                child: Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 5),
                                      child: Image.asset(
                                        "assets/images/car.png",
                                        width: 200,
                                        height: 100,
                                      ),
                                    ),
                                    Container(
                                        margin: EdgeInsets.only(
                                            top: 5, left: 5, right: 5),
                                        child: Text(
                                          "Mustang GT",
                                          style: TextStyle(
                                              fontSize: 24,
                                              color: Colors.white),
                                        )),
                                  ],
                                )),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Color.fromRGBO(34, 150, 243, 1),
                      ),
                      margin: EdgeInsets.only(
                        top: 20,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(right: 5),
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Icon(
                                Icons.favorite,
                                color: Colors.blueAccent[100],
                                size: 35,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              bottom: 5,
                              right: 5,
                              left: 5,
                            ),
                            child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Detail()),
                                  );
                                },
                                child: Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 5),
                                      child: Image.asset(
                                        "assets/images/car.png",
                                        width: 200,
                                        height: 100,
                                      ),
                                    ),
                                    Container(
                                        margin: EdgeInsets.only(
                                            top: 5, left: 5, right: 5),
                                        child: Text(
                                          "Mustang GT",
                                          style: TextStyle(
                                              fontSize: 24,
                                              color: Colors.white),
                                        )),
                                  ],
                                )),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
