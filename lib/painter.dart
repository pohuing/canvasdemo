import 'package:flutter/material.dart';

class Painter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawLine(
      Offset(0, size.height / 2),
      Offset(size.width, size.height / 2),
      Paint()
        ..color = Colors.black
        ..strokeWidth = 15,
    );
    canvas.drawLine(
      Offset(0, size.height / 2 - 30),
      Offset(size.width, size.height / 2 + 30),
      Paint()
        ..color = Colors.yellow.withAlpha(120)
        ..strokeWidth = 30,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
