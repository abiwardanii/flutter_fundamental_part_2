import 'package:flutter/material.dart';
import './get_method.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String output = "no data";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Get Method"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              // ignore: unnecessary_null_comparison
              Text(output),
              RaisedButton(
                onPressed: () {
                  User.getUsers("2").then((users) {
                    output = "";
                    for (int i = 0; i < users.length; i++) {
                      output = output + "[ " + users[i].name + " ]";
                    }
                    setState(() {});
                  });
                },
                child: Text("GET"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
