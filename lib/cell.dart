import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/game.dart';

class Cell extends StatelessWidget {
  //var
  final Game mGame;

  const Cell(this.mGame, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Icon(
              Icons.delete,
              color: Colors.black,
              size: 24.0,
              semanticLabel: 'Text to announce in accessibility modes',
            ),
            Image.asset(
              "Assets/${mGame.image}",
              width: 240,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: Row(
                children: [
                  Text(
                    "${mGame.price.floor().toString()} TND",
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  // ignore: prefer_const_constructors
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
