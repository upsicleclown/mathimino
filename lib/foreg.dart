import 'dart:ui';

import 'package:flame/sprite.dart';
import 'package:mathimino/row.dart';

class ForegroundLayer {
  final double horScreenProportion = 1 / 7;
  Sprite barrel;
  Row blueR, greenR, purpleR, redR;
  List<Row> rows;
  int rowCount = 0;
  double topY = 0;
  ForegroundLayer(String barrel, String blueFile, String greenFile,
      String purpleFile, String redFile) {
    this.barrel = Sprite(barrel);
    rows = [Row(blueFile), Row(greenFile), Row(purpleFile), Row(redFile)];
  }
  void drawForeground(Canvas canvas, Size size, int counter) {
    double colWidth = horScreenProportion * size.width;

    int k = 1;
    for (int i = 0; i <= counter; i++) {
      rows[i % 4].drawRow(canvas, size, k);
      k++;
    }
    /*if (counter > 0) {
      barrelSpot = 2;
      blueR.renderRect(
          canvas,
          Rect.fromLTWH(colWidth + colWidth / 2, size.height - colWidth,
              colWidth * 4, colWidth));
    }
    if (counter > 1) {
      barrelSpot = 3;
      greenR.renderRect(
          canvas,
          Rect.fromLTWH(colWidth + colWidth / 2, size.height - (colWidth * 2),
              colWidth * 4, colWidth));
    }
    if (counter > 2) {
      barrelSpot = 4;
      purpleR.renderRect(
          canvas,
          Rect.fromLTWH(colWidth + colWidth / 2, size.height - colWidth * 3,
              colWidth * 4, colWidth));
    }
    if (counter > 3) {
      barrelSpot = 5;
      redR.renderRect(
          canvas,
          Rect.fromLTWH(colWidth + colWidth / 2, size.height - colWidth * 4,
              colWidth * 4, colWidth));
    }*/
    topY = size.height - colWidth * (counter + 1);
    barrel.renderRect(
        canvas,
        Rect.fromLTWH(colWidth * 2 - colWidth / 2,
            size.height - colWidth * (counter + 1), colWidth, colWidth));
    barrel.renderRect(
        canvas,
        Rect.fromLTWH(colWidth * 3 - colWidth / 2,
            size.height - colWidth * (counter + 1), colWidth, colWidth));
    barrel.renderRect(
        canvas,
        Rect.fromLTWH(colWidth * 4 - colWidth / 2,
            size.height - colWidth * (counter + 1), colWidth, colWidth));
    barrel.renderRect(
        canvas,
        Rect.fromLTWH(colWidth * 5 - colWidth / 2,
            size.height - colWidth * (counter + 1), colWidth, colWidth));
  }
}
