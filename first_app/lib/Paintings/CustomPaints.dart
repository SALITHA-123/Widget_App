import 'package:flutter/material.dart';

class CustomPaints extends StatefulWidget {

  @override
  _CustomPaintsState createState() => _CustomPaintsState();
}

class _CustomPaintsState extends State<CustomPaints> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Custom Paint", style: TextStyle(fontSize: 30,),),
    centerTitle: true,
    backgroundColor: Colors.blue,
      ),
      body: Center(
        child: CustomPaint(
          painter: DrawCircle(),
        ),
      ),
    );
  }
}

class DrawCircle extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colors.red;

    canvas.drawCircle(Offset(0.0, 0.0), 100, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate)
  {//false : paint call might be optimized away.
    return false;
  }
}

