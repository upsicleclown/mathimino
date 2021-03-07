import 'dart:html';
import 'dart:ui';

import 'package:flame/animation.dart';
import 'package:flame/components/animation_component.dart';
import 'package:flame/spritesheet.dart';

class Coin {
  AnimationComponent component;
  Animation animation;
  final coinSheet = SpriteSheet(
      imageName: 'coinSheet.png',
      textureWidth: 24,
      textureHeight: 24,
      columns: 16,
      rows: 1);

  Coin() {
    animation = coinSheet.createAnimation(0, from: 0, to: 15, stepTime: 0.1);

    component.animation = animation;
    component.width = 24;
    component.height = 24;
  }

  void draw(Canvas canvas) {
    component.render(canvas);
  }
}
