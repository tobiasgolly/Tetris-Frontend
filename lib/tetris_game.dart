import 'package:flame/game.dart';

class TetrisGame extends FlameGame {

  nameSubmitted(String name) {
    overlays.remove('start-page');
    overlays.add('menu');
  }

  startGame() {

  }

  openScoreboard() {

  }
}
