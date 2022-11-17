import 'package:flame/game.dart';

class TetrisGame extends FlameGame {
  final List<String> overlayList = [
    'start_page',
    'menu',
    'game_over',
    'scoreboard',
    'pause_dialog',
  ];

  nameSubmitted(String name) {
    overlays.remove('start_page');
    overlays.add('menu');
  }

  startGame() {
    overlays.add('game_over');
    //overlays.removeAll(overlayList);
  }

  openScoreboard() {
    overlays.add('scoreboard');
  }

  backToMenu() {
    overlays.removeAll(overlayList);
    overlays.add('menu');
  }
}
