import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: QrImage(
            data: "https://www.youtube.com/watch?v=XIIqgWUtPpk",
            size: 300,
            version: 6,
            padding: EdgeInsets.all(10),
            backgroundColor: Colors.grey,
            foregroundColor: Colors.black,
            errorCorrectionLevel: QrErrorCorrectLevel.M,
          ),
        ),
      ),
    );
  }
}
