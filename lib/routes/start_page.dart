import 'package:flutter/material.dart';

import '../tetris_game.dart';

class StartPage extends StatelessWidget {
  const StartPage(this.game, {super.key});

  final TetrisGame game;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.greenAccent,
      child: Center(
        child: SizedBox(
          height: 100,
          width: 400,
          child: Column(
            children: [
              const Text(
                'Enter Name:',
                style: TextStyle(
                  color: Colors.red,
                ),
              ),
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Name',
                ),
                onSubmitted: submitName,
              ),
              ElevatedButton(
                onPressed: game.openScoreboard,
                child: Text('Enter'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  submitName(String name) {
    game.nameSubmitted(name);
  }
}
