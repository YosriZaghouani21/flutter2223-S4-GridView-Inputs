import 'package:flutter/material.dart';
import 'package:myapp/cell.dart';
import 'package:myapp/game.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  //var
  final List<Game> games = [
    Game("dmc5.jpg", "Devil May Cry 5", 200),
    Game("fifa.jpg", "Fifa 22", 220),
    Game("minecraft.jpg", "Minecraft", 150),
    Game("nfs.jpg", "Need For Speed", 100),
    Game("rdr2.jpg", "Red Dead 2", 150),
    Game("re8.jpg", "Resident Evil 8", 120)
  ];

  //actions

  //life cycle
  @override
  void initState() {
    super.initState();
  }

  //build
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("G-Store Esprit"),
        ),
        body: Column(children: [
          const Text(
            "Total : 940DT",
            style: TextStyle(fontSize: 20),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: games.length,
                itemBuilder: (context, index) {
                  return Cell(games[index]);
                }),
          )
        ]));
  }
}
