import 'dart:ui';
import 'package:flame/game.dart';
import 'package:flame/components/component.dart';
import 'package:flame/util.dart';

class Mathimino extends BaseGame {
  SpriteComponent _eqBlock;

  Mathimino() {
    _eqBlock = SpriteComponent.square(64, 'redBrick.png');
    this.add(_eqBlock);
  }
}
