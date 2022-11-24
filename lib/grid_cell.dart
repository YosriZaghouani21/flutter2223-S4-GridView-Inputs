import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:myapp/game.dart';

class GridCell extends StatelessWidget {
  final Game _game;
  const GridCell(this._game, {super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Image.asset("Assets/${_game.image}"),
        ),
      ),
    );
  }
}
