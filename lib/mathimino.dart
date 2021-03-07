import 'dart:ui';
import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flame/components/component.dart';
import 'package:flame/sprite.dart';
import 'package:flame/util.dart';
import 'package:flutter/cupertino.dart';
import 'package:mathimino/backg.dart';
import 'package:mathimino/foreg.dart';
import 'package:mathimino/coin.dart';

class Mathimino extends BaseGame {
  SpriteComponent _eqBlock;
  SpriteComponent row1;
  final int origRowWidth = 164;
  final int origRowHeight = 32;
  final int numOfHorizTiles = 7; //total number of horizontal tiles
  final int rowNumTiles = 5; // number of tiles that a row takes up
  BackgroundLayer bLayer;
  ForegroundLayer fLayer;
  Coin coin;
  int winCount = 4;

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
    fLayer = ForegroundLayer('barrel.png', 'BlueBlockRow.png',
        'GreenBlockRow.png', 'PurpleBlockRow.png', 'RedBlockRow.png');
    coin = Coin();
  }

  void onTapDown(TapDownDetails d) {
    coin.onTapDown(d);
  }

  void resize(Size size) {
    super.resize(size);
    row1.width = size.width * rowNumTiles / numOfHorizTiles;
    row1.height = origRowHeight / origRowWidth * row1.width;
  }

  void update(double t) {
    coin.setTopRowY(fLayer.topY);
    coin.update(t, 0, this.size.width);
  }

  void render(Canvas canvas) {
    bLayer.drawBackground(canvas, size);
    fLayer.drawForeground(canvas, size, winCount);
    coin.render(canvas);
  }
}
