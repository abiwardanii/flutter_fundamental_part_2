import 'package:flutter/material.dart';
import 'package:qrscan/qrscan.dart' as scanner;

class MainPage extends StatefulWidget {

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String text = "Hasil QR Scan";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QR Scan'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
              child: Text("Scan"),
              onPressed: () async {
                text = await scanner.scan();
                setState(() {});
              },
            )
          ],
        ),
      ),
    );
  }
}
