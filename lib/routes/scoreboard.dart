import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../tetris_game.dart';

class Scoreboard extends StatelessWidget {
  const Scoreboard(this.game, {super.key});

  final TetrisGame game;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Column(
          children: [
            ListView(
              shrinkWrap: true,
              children: [
                Container(
                  height: 50,
                  color: Colors.amber[600],
                  child: const Center(child: Text('Entry A')),
                ),
                Container(
                  height: 50,
                  color: Colors.amber[500],
                  child: const Center(child: Text('Entry B')),
                ),
                Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: const Center(child: Text('Entry C')),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: game.backToMenu,
              child: Text('Back'),
            )
          ],
        ),
      ),
    );
  }
}
