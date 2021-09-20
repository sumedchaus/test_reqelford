import 'dart:ui';
import 'package:flutter_shapes/flutter_shapes.dart';
import 'package:flutter/material.dart';


class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final height = size.height;
    final width = size.width;
    Paint paint = Paint()
      ..color = Colors.white10;
    paint.color.blue;

    // ..style = PaintingStyle.stroke;

    Shapes shapes = Shapes(
        canvas: canvas,
        radius: 220,
        paint: paint,
        center: Offset(
          width ,
          height * 0.35,
        ),
        angle: 0);

    shapes.drawCircle(); // method name
    shapes.drawType(ShapeType.Circle); // enum
    shapes.draw('Circle');

    Paint paint1 = Paint()
      ..color = Colors.white10;
    // ..style = PaintingStyle.stroke;

    Shapes shapes1 = Shapes(
        canvas: canvas,
        radius: 220,
        paint: paint1,
        center: Offset(
          width * 0.5,
          height,
        ),
        angle: 0);

    shapes1.drawCircle(); // method name
    shapes1.drawType(ShapeType.Circle); // enum
    shapes1.draw('Circle'); // string
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}
