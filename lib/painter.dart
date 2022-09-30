import 'package:flutter/material.dart';

class Painter extends CustomPainter {
  bool useLayers;

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawLine(
      Offset(0, size.height / 2),
      Offset(size.width, size.height / 2),
      Paint()
        ..color = Colors.black
        ..strokeWidth = 15,
    );

    late final Color highlighterColor;
    if (useLayers) {
      canvas.saveLayer(canvas.getLocalClipBounds(),
          Paint()..color = Colors.yellow.withAlpha(120));
      highlighterColor = Colors.yellow;
    } else {
      highlighterColor = Colors.yellow.withAlpha(120);
    }
    canvas.drawLine(
        Offset(size.width / 3, 0),
        Offset(size.width / 3, size.height),
        Paint()
          ..strokeWidth = 30
          ..color = highlighterColor);
    canvas.drawLine(
        Offset(0, size.height / 2 - 30),
        Offset(size.width, size.height / 2 + 30),
        Paint()
          ..strokeWidth = 30
          ..color = highlighterColor);
    if (useLayers) canvas.restore();
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }

  Painter(this.useLayers);
}
