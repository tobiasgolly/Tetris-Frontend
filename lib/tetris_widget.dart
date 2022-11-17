

import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:tetris_frontend/routes/game_over.dart';
import 'package:tetris_frontend/routes/menu.dart';
import 'package:tetris_frontend/routes/pause-dialog.dart';
import 'package:tetris_frontend/routes/scoreboard.dart';
import 'package:tetris_frontend/routes/start_page.dart';
import 'package:tetris_frontend/tetris_game.dart';

class TetrisWidget extends StatelessWidget {
  const TetrisWidget({super.key});

  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      title: 'Tetris',
      home: GameWidget<TetrisGame>(
        game: TetrisGame(),
        loadingBuilder: (context) => Center(
          child: Text(
            'Loading...',
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
        overlayBuilderMap: {
          'start-page': (_, game) => StartPage(game),
          'menu': (_, game) => Menu(game),
          'game_over': (_, game) => GameOver(game),
          'scoreboard': (_, game) => Scoreboard(game),
          'pause-dialog': (_, game) => PauseDialog(game),
        },
        initialActiveOverlays: const ['start-page'],
      ),
    );
  }
}