import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('belajar spacer'),
        ),
        body: Center(
          child: Row(
            children: <Widget>[
              Spacer(flex: 1,),
              Container(
                color: Colors.red,
                height: 100,
                width: 100,
              ),
              Spacer(flex: 2,),
              Container(
                color: Colors.green,
                height: 100,
                width: 100,
              ),
              Spacer(flex: 3,),
              Container(
                color: Colors.blue,
                height: 100,
                width: 100,
              ),
              Spacer(flex: 1,),
            ],
          ),
        ),
      ),
    );
  }
}
