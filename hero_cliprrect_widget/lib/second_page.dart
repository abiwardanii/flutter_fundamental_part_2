import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[100],
      appBar: AppBar(
        title: Text(
          "belajar Hero and ClipRRect",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Hero(
          tag: "pokemon",
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Container(
              color: Colors.white,
              width: 200,
              height: 200,
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
