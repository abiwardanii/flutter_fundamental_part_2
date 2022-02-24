import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(200),
          child: AppBar(
            backgroundColor: Colors.amber,
            title: Text(
              "belajar appbar custom height",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w700),
            ),
          ),
        ),
      ),
    );
  }
}
