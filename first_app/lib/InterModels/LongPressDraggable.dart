import 'package:flutter/material.dart';

class LongDrag extends StatefulWidget {
  @override
  _LongDragState createState() => _LongDragState();
}

class _LongDragState extends State<LongDrag> {



  @override
  Widget build(BuildContext context) {
    Offset _offset = Offset.zero;
    return Scaffold(
      appBar: AppBar(title: Text('Long Press Draggable', style: TextStyle(fontSize: 30,),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: LayoutBuilder(
    builder: (context, constraints) {
      return Stack(
        children: [
          Positioned(
            left: _offset.dx,
            top: _offset.dy,
            child: LongPressDraggable(
              feedback: FlutterLogo(size: 100),
              child: FlutterLogo(size: 100),
              onDragEnd: (details) {
                setState(() {
                  final adjustment = MediaQuery
                      .of(context)
                      .size
                      .height -
                      constraints.maxHeight;
                  _offset = Offset(
                      details.offset.dx, details.offset.dy - adjustment);
                });
              },
            ),
          ),
        ],
      );
    }
    ),
    );
  }
}
