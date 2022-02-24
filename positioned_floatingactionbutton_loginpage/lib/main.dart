import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './main_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Force stay portrait mode, tidak bisa di landscape
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return MaterialApp(
      // utk menghilangkan debug mode
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}
