import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('belajar textfield'),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            TextField(
                decoration: InputDecoration(
                  fillColor: Colors.yellow,
                  filled: true,
                  suffixIcon: Icon(Icons.search), // belakang
                  icon: Icon(Icons.person),
                  prefixIcon: Icon(Icons.account_circle), // depan
                  prefixText: 'Name: ',
                  prefixStyle: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold),
                  labelText: "Full Name",
                  hintText: "Enter your name", // placeholder
                  hintStyle: TextStyle(fontSize: 12),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
                maxLength: 10,
                obscureText:
                    false, // jika true maka akan menyembunyikan text(password)
                onChanged: (value) {
                  setState(() {});
                },
                controller: controller),
            Text(controller.text)
          ],
        ),
      ),
    ));
  }
}
