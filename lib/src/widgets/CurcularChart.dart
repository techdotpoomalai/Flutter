import 'package:flutter/material.dart';
import 'dart:math';

class CurcularChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      body: Center(
        child: Container(
          width: 150,
          height: 150,
          color: Color.fromARGB(255, 0, 0, 0),
          child: CustomPaint(
            child: Center(
              child: Text(
                "120",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.w900),
              ),
            ),
            painter: CircularChartPainter(),
          ),
        ),
      ),
    );
  }
}

class CircularChartPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = Color.fromARGB(255, 227, 6, 6)
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..strokeWidth = 15.0;

    final double radius = size.width / 2;
    final Offset center = Offset(size.width / 2, size.height / 2);
    final double startAngle = pi;
    final double sweepAngle = pi;

    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      startAngle,
      sweepAngle,
      false,
      paint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
