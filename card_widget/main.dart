import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.green,
      body: Container(
        margin: EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            BuildCard(Icons.account_box, "Account box"),
            BuildCard(Icons.adb, "Android"),
          ],
        ),
      ),
    ));
  }

  Card BuildCard(IconData iconData, String text) {
    return Card(
      elevation: 4,
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(5),
            child: Icon(
              iconData,
              color: Colors.green,
            ),
          ),
          Text(text),
        ],
      ),
    );
  }
}
