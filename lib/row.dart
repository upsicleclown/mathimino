import 'dart:ui';

import 'package:flame/sprite.dart';

class Row {
  final double horScreenProportion = 1 / 7;
  Sprite rowMandem;
  double yCoord;

  Row(String r) {
    this.rowMandem = Sprite(r);
  }
  void drawRow(Canvas canvas, Size size, int count) {
    double colWidth = horScreenProportion * size.width;
    yCoord = size.height - colWidth * count;
    rowMandem.renderRect(canvas,
        Rect.fromLTWH(colWidth + colWidth / 2, yCoord, colWidth * 4, colWidth));
  }
}
