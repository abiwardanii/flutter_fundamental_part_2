import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text("belajar Tab Bar"),
            bottom: TabBar(
              tabs: <Widget>[
                Tab(
                  icon: Icon(Icons.directions_car),
                  text: "mobil",
                ),
                Tab(
                  icon: Icon(Icons.directions_transit),
                  text: "kereta",
                ),
                Tab(
                  icon: Icon(Icons.directions_bike),
                  text: "sepeda",
                ),
                Tab(child: Image.asset("images/pokeball.png"))
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Center(
                child: Text("Tab Mobil"),
              ),
              Center(
                child: Text("Tab Kereta"),
              ),
              Center(
                child: Text("Tab Sepeda"),
              ),
              Center(
                child: Text("Tab Pokeball"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
