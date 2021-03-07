import 'dart:ui';

import 'package:flame/animation.dart';
import 'package:flame/components/animation_component.dart';
import 'package:flame/sprite.dart';
import 'package:flame/spritesheet.dart';
import 'package:flutter/cupertino.dart';

class Coin {
  Sprite sprite;
  final double _width = 24;
  final double _height = 24;
  double _x, _y;
  final String _fileName = 'coin.png';

  Coin({double x = 100, double y = 0}) {
    _x = x;
    _y = y;
    sprite = Sprite(_fileName);
  }

  void render(Canvas c) {
    sprite.renderRect(c, Rect.fromLTWH(_x, _y, _width, _height));
  }

  void update(double t) {
    if (_y > 200) {
      _y = 0;
    } else {
      ++_y;
    }
  }

  void onTapDown(TapDownDetails d) {
    if (d.globalPosition.dx < _x && _x > _width) {
      _x -= _width;
    } else if (d.globalPosition.dy > _x + _width) {
      _x += _width;
    }
  }

  // AnimationComponent component;
  // Animation animation;
  // final coinSheet = SpriteSheet(
  //     imageName: 'coinSheet.png',
  //     textureWidth: 24,
  //     textureHeight: 24,
  //     columns: 16,
  //     rows: 1);

  // Coin() {
  //   component = AnimationComponent.empty();
  //   animation = coinSheet.createAnimation(0, from: 0, to: 15, stepTime: 0.1);

  //   component.animation = animation;
  //   component.width = 24;
  //   component.height = 24;
  // }

  // void draw(Canvas canvas) {
  //   component.render(canvas);
  // }
}
