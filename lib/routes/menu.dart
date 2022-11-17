import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../tetris_game.dart';

class Menu extends StatelessWidget {
  const Menu(this.game, {super.key});

  final TetrisGame game;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: game.startGame,
              child: Text('Start'),
            ),
            ElevatedButton(
              onPressed: game.openScoreboard,
              child: Text('Score Board'),
            ),
          ],
        ),
      ),
    );
  }

  start() {}
}
