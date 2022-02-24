import 'package:flutter/material.dart';
import './second_page.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      appBar: AppBar(
        title: Text(
          "belajar Hero and ClipRRect",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return SecondPage();
          }));
        },
        child: Hero(
          tag: "pokemon",
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Container(
              color: Colors.white,
              width: 100,
              height: 100,
              child: Image(
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://assets.pokemon.com/assets/cms2/img/pokedex/full/880.png"),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
