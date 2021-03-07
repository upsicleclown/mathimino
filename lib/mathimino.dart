import 'dart:ui';
import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flame/components/component.dart';
import 'package:flame/sprite.dart';
import 'package:flame/util.dart';
import 'package:mathimino/backg.dart';
import 'package:mathimino/coin.dart';

class Mathimino extends BaseGame {
  SpriteComponent _eqBlock;
  SpriteComponent row1;
  final int origRowWidth = 164;
  final int origRowHeight = 32;
  final int numOfHorizTiles = 7; //total number of horizontal tiles
  final int rowNumTiles = 5; // number of tiles that a row takes up
  BackgroundLayer bLayer;
  Coin coin;

  Mathimino() {
    _eqBlock = SpriteComponent.square(64, 'redBrick.png');
    this.add(_eqBlock);
    row1 = SpriteComponent.rectangle(origRowWidth.toDouble(),
        origRowHeight.toDouble(), 'PurpleBlockRow.png');
    row1.x = 30;
    row1.y = 500;
    this.add(row1);
    //if (size != null){
    bLayer =
        BackgroundLayer('backGround.png', 'leftTower.png', 'rightTower.png');
    coin = Coin();
    this.add(coin.component);
  }
  void resize(Size size) {
    super.resize(size);
    row1.width = size.width * rowNumTiles / numOfHorizTiles;
    row1.height = origRowHeight / origRowWidth * row1.width;
  }

  void update(double t) {}
  void render(Canvas canvas) {
    bLayer.drawBackground(canvas, size);
    coin.draw(canvas);
  }
}
