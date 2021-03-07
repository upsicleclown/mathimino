import 'dart:ui';

import 'package:flame/animation.dart';
import 'package:flame/components/animation_component.dart';
import 'package:flame/sprite.dart';
import 'package:flame/spritesheet.dart';

class Coin {
  Sprite sprite;
  final double _width = 24;
  final double _height = 24;
  double _x, _y;
  final String _fileName = 'coin.png';
  double _topRowsY = 200, _speed = 100;
  double screenWidth = 500;

  Coin({double x = 500/2, double y = 0}) {
    _x = x;
    _y = y;
    sprite = Sprite(_fileName);
  }

  void render(Canvas c) {
    sprite.renderRect(c, Rect.fromLTWH(_x, _y, _width, _height));
  }
  void reset(){
    _x = screenWidth/2 - _width;
    _y = 0;
  }
  void setSpeed(double speed){
    _speed = speed;
  }
  void setTopRowY(double top){
    _topRowsY = top;
  }
  bool update(double t, double correctX, double bWidth) {
    if (_y + _height >= _topRowsY) {
      if (_x >= correctX && _x <= bWidth){
         _y = 0;
        return true;
      }
    } 
    else {
      _y += _speed*t;
    }
    return false;

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
