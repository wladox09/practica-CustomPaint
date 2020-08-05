import 'dart:ui';

import 'package:flutter/material.dart';

class MyPainter extends StatelessWidget {
  const MyPainter({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lines'),
      ),
      body: CustomPaint(
        painter: ShapePainter(),
        child: Container(),
      ),
    );
  }
}

class ShapePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.black
      ..strokeWidth = 5
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    //linea1
    var path = Path();

    path.moveTo(10, size.height - 10);
    path.lineTo(10, size.height / 2);

    //curva1
    path.quadraticBezierTo(10, 110, size.width / 2, 10);

    //linea2
    path.moveTo(size.width - 10, size.height - 10);
    path.lineTo(size.width - 10, size.height / 2);

    //curva2
    path.quadraticBezierTo(size.width - 10, 110, size.width / 2, 10);

    //linea3
    path.moveTo(10, size.height - 10);
    path.lineTo(size.width - 10, size.height - 10);

    canvas.drawPath(path, paint);
    //pintando

    var paint2 = Paint()
      ..color = Colors.purple
      ..strokeWidth = 20
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    List<Offset> points = [];

    print(size.height / 50);

    var ref = 10.0;

    for (var i = 0; i < 8; i++) {
      if (ref < size.height) {
        points.add(Offset(size.width / 2, ref));
        ref = ref + i * 100;
      }
    }

    canvas.drawPoints(PointMode.points, points, paint2);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
