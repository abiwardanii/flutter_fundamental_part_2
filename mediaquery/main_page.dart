import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Page'),
      ),
      body: (MediaQuery.of(context).orientation == Orientation.portrait)
          ? Column(
              children: generateContainers,
            )
          : Row(
              children: generateContainers,
            ),
    );
  }

  List<Widget> get generateContainers {
    return <Widget>[
      Container(
        color: Colors.red,
        width: 120,
        height: 120,
      ),
      Container(
        color: Colors.green,
        width: 120,
        height: 120,
      ),
      Container(
        color: Colors.blue,
        width: 120,
        height: 120,
      ),
      Container(
        color: Colors.yellow,
        width: 120,
        height: 120,
      ),
      Container(
        color: Colors.black,
        width: 120,
        height: 120,
      ),
    ];
  }
}
