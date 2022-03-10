import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isOn = false;
  Widget myWidget = Container(
    width: 200,
    height: 100,
    decoration: BoxDecoration(
        color: Colors.red, border: Border.all(color: Colors.black, width: 3)),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("animated switch widget"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AnimatedSwitcher(
                duration: Duration(seconds: 1),
                child: myWidget,
                transitionBuilder: (child, animation) => ScaleTransition(
                  scale: animation,
                  child: child,
                ),
              ),
              Switch(
                  activeTrackColor: Colors.green,
                  inactiveTrackColor: Colors.red,
                  inactiveThumbColor: Colors.red,
                  value: isOn,
                  onChanged: (newValue) {
                    isOn = newValue;
                    setState(() {
                      if (isOn) {
                        myWidget = Text(
                          "Switch: ON",
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 20,
                              fontWeight: FontWeight.w700),
                        );
                      } else {
                        myWidget = Container(
                          width: 200,
                          height: 100,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              border:
                                  Border.all(color: Colors.black, width: 3)),
                        );
                      }
                    });
                  })
            ],
          ),
        ),
      ),
    );
  }
}
