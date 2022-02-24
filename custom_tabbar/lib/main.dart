import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    TabBar myTabBar = TabBar(
      // indicatorColor: Colors.red,
      indicator: BoxDecoration(
          color: Colors.red,
          border: Border(bottom: BorderSide(color: Colors.green, width: 5))),

      tabs: [
        Tab(
          icon: Icon(Icons.directions_car),
          text: "Car",
        ),
        Tab(
          icon: Icon(Icons.directions_transit),
          text: "Transit",
        ),
      ],
    );

    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text("belajar custom Tab bar"),
            bottom: PreferredSize(
                preferredSize: Size.fromHeight(myTabBar.preferredSize.height),
                child: Container(color: Colors.amber, child: myTabBar)),
          ),
          body: TabBarView(
            children: [
              Center(
                child: Text("Car"),
              ),
              Center(
                child: Text("Transit"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
