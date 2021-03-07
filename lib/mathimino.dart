import 'dart:ui';
import 'package:flame/game.dart';
import 'package:flame/components/component.dart';
import 'package:flame/util.dart';

class Mathimino extends BaseGame {
  SpriteComponent _eqBlock;
  SpriteComponent row1;
  final int origRowWidth = 164;
  final int origRowHeight = 32;
  final int numOfHorizTiles = 7; //total number of horizontal tiles
  final int rowNumTiles = 5; // number of tiles that a row takes up

  Mathimino() {
    _eqBlock = SpriteComponent.square(64, 'redBrick.png');
    this.add(_eqBlock);
    row1 = SpriteComponent.rectangle(164, 32, 'PurpleBlockRow.png');
    row1.resize(size);
    row1.x = 30;
    row1.y = 500;
    this.add(row1);
  }
  void resize(Size size){
    super.resize(size);
    row1.width = size.width*rowNumTiles/numOfHorizTiles;
    row1.height = origRowHeight/origRowWidth*row1.width;
  }
  /*void update (double t){
    
  }
  void render(Canvas canvas){

  }*/
}
