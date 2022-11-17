import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../tetris_game.dart';

class GameOver extends StatelessWidget {
  const GameOver(this.game, {super.key});

  final TetrisGame game;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Text('GAME OVER'),
          Text('Score'),
          ElevatedButton(
            onPressed: game.startGame,
            child: Text('Restart'),
          ),
          ElevatedButton(
            onPressed: game.backToMenu,
            child: Text('Back'),
          ),
        ],
      ),
    );
  }
}
