import 'dart:ui';

import 'package:flame/sprite.dart';

class BackgroundLayer{
  final double horScreenProportion = 1/7;
  Sprite backSprite, leftSprite, rightSprite;
  BackgroundLayer(String bFile, String lFile, String rFile){
    this.backSprite = Sprite(bFile);
    this.leftSprite = Sprite(lFile);
    this.rightSprite = Sprite(rFile);
  }
  void drawBackground(Canvas canvas, Size size){
    backSprite.renderRect(canvas, Rect.fromLTWH(0, 0, size.width, size.height));
    double colWidth = horScreenProportion*size.width;
    leftSprite.renderRect(canvas, Rect.fromLTWH(0, 0, colWidth, size.height));
    rightSprite.renderRect(canvas, Rect.fromLTWH(size.width - colWidth, 0, colWidth, size.height));
  }
}