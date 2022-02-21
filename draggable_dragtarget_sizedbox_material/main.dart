import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isAccepted = false;
  Color? targetColor;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('belajar dragable'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Draggable<Color>(
                data: Colors.red,
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: Material(
                    color: Colors.red,
                    shape: StadiumBorder(),
                    elevation: 3,
                  ),
                ),
                childWhenDragging: SizedBox(
                  width: 50,
                  height: 50,
                  child: Material(
                    color: Colors.blue,
                    shape: StadiumBorder(),
                    elevation: 3,
                  ),
                ),
                feedback: SizedBox(
                  width: 50,
                  height: 50,
                  child: Material(
                    color: Colors.red.withOpacity(0.5),
                    shape: StadiumBorder(),
                    elevation: 3,
                  ),
                ),
              ),
              Draggable<Color>(
                data: Colors.green,
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: Material(
                    color: Colors.green,
                    shape: StadiumBorder(),
                    elevation: 3,
                  ),
                ),
                childWhenDragging: SizedBox(
                  width: 50,
                  height: 50,
                  child: Material(
                    color: Colors.blue,
                    shape: StadiumBorder(),
                    elevation: 3,
                  ),
                ),
                feedback: SizedBox(
                  width: 50,
                  height: 50,
                  child: Material(
                    color: Colors.green.withOpacity(0.5),
                    shape: StadiumBorder(),
                    elevation: 3,
                  ),
                ),
              )
            ],
          ),
          DragTarget<Color>(
            //fungsi untuk mengecek apakah data ini ingin diterima atau tidak 
              onWillAccept: (value) => true,

              //fungsi yang akan dilakukan ketika menerima data tersebut
              onAccept: (value) {
                isAccepted = true;
                targetColor = value;
              },
              builder: (context, candidates, rejected) {
                return (isAccepted)
                    ? SizedBox(
                        width: 100,
                        height: 100,
                        child: Material(
                          color: targetColor,
                          shape: StadiumBorder(),
                          elevation: 3,
                        ),
                      )
                    : SizedBox(
                        width: 100,
                        height: 100,
                        child: Material(
                          color: Colors.blue,
                          shape: StadiumBorder(),
                          elevation: 3,
                        ),
                      );
              })
        ],
      ),
    ));
  }
}
