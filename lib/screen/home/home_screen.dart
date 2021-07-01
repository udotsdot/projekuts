import 'package:flutter/material.dart';
import 'package:projekuts/bloc/ProdukBloc.dart';
import 'package:projekuts/screen/home/Produk.dart';
import 'package:projekuts/screen/home/drawer.dart';

class Mainmenu extends StatefulWidget {
  @override
  _MainmenuState createState() => _MainmenuState();
}

class _MainmenuState extends State<Mainmenu>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  String kategori = 'MPV';
  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    produkBloc.dispose();
    _tabController.dispose();
    super.dispose();
  }

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
                  text: "Sedan",
                ),
                Tab(
                  text: "Minibus",
                ),
              ]),
          body: TabBarView(
              controller: _tabController,
              physics: NeverScrollableScrollPhysics(),
              children: [
                Produk(kategori: 'MPV'),
                Produk(kategori: 'SUV'),
                Produk(kategori: 'sedan'),
                Produk(kategori: 'minibus'),
              ]),
        ),
      ),
    );
  }
}
