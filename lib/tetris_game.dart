import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flame/game.dart';

class TetrisGame extends FlameGame {
  final List<String> overlayList = [
    'start_page',
    'menu',
    'game_over',
    'scoreboard',
    'pause_dialog',
  ];

  late final SpriteComponent player;

  double stepTimer = 0.0;
  int level = 0;
  int stepSpeed = 1;

  @override
  Future<void> onLoad() async {
    final sprite = await Sprite.load('Blue.png');
    final size = Vector2.all(30.0);
    final player = SpriteComponent(size: size, sprite: sprite);

    // Vector2(0.0, 0.0) by default, can also be set in the constructor
    player.position = Vector2(10, 10);

    // Adds the component
    add(player);
  }

  @override
  void update(double dt) {
    super.update(dt);
    stepper(dt);
  }

  void stepper(dt) {
    stepTimer += dt;
    if (stepSpeed < stepTimer) return;
  }

  @override
  Color backgroundColor() => const Color.fromRGBO(213, 255, 128, 75);

  nameSubmitted(String name) {
    overlays.remove('start_page');
    overlays.add('menu');
  }

  startGame() {
    overlays.removeAll(overlayList);
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
