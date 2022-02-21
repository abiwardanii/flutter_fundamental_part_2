import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('belajar stack dan align'),
        ),
        body: Stack(
          children: <Widget>[
            // Lapisan stack ke 1
            Column(
              children: <Widget>[
                Flexible(
                    flex: 1,
                    child: Row(
                      children: <Widget>[
                        Flexible(child: Container(color: Colors.white)),
                        Flexible(child: Container(color: Colors.black12)),
                      ],
                    )),
                Flexible(
                    flex: 1,
                    child: Row(
                      children: <Widget>[
                        Flexible(child: Container(color: Colors.black12)),
                        Flexible(child: Container(color: Colors.white)),
                      ],
                    )),
              ],
            ),
            // Lapisan stack ke 2
            ListView(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(30),
                      child: Text(
                        'text lapisan dari Stack',
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(30),
                      child: Text(
                        'text lapisan dari Stack',
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(30),
                      child: Text(
                        'text lapisan dari Stack',
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(30),
                      child: Text(
                        'text lapisan dari Stack',
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(30),
                      child: Text(
                        'text lapisan dari Stack',
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(30),
                      child: Text(
                        'text lapisan dari Stack',
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(30),
                      child: Text(
                        'text lapisan dari Stack',
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(30),
                      child: Text(
                        'text lapisan dari Stack',
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                  ],
                )
              ],
            ),
            // Lapisan stack ke 3
            Align(
              alignment:
                  //cara 1
                  //Alignment(x,y) x = kanan-kiri, y = atas-bawah
                  //Alignment(0,1) -> contoh
                  //cara 2
                  Alignment.bottomCenter,
              child: RaisedButton(
                child: Text('tombol'),
                onPressed: () {},
                color: Colors.amber,
              ),
            )
          ],
        ),
      ),
    );
  }
}
