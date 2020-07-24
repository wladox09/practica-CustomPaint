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
    path.quadraticBezierTo(
        10, 110, size.width / 2, 10);

    //linea2
    path.moveTo(size.width - 10,  size.height - 10);
    path.lineTo(size.width - 10, size.height / 2);

    //curva1
    path.quadraticBezierTo(
        size.width - 10, 110, size.width / 2, 10);

    //linea3
    path.moveTo(10,  size.height - 10);
    path.lineTo(size.width - 10, size.height - 10);


    //pintando
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
