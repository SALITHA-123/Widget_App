import 'package:flutter/material.dart';

class Drag extends StatefulWidget {

  @override
  _DragState createState() => _DragState();
}

class _DragState extends State<Drag> {

  double width = 100.0, height = 100.0;
  late Offset position;

  @override
  void initState() {
    super.initState();
    position = Offset(0.0, height - 20);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Draggable', style: TextStyle(fontSize: 30,),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Stack(
        children: <Widget>[
          Positioned(
            left: position.dx,
            top: position.dy - height + 20,
            child: Draggable(
              child: Container(
                width: 100,
                height: 100,
                color: Colors.orangeAccent,
                child: Center(
                  child: Text(
                    "Drag This",
                    style: Theme.of(context).textTheme.caption!.copyWith(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              feedback: Container(
                child: Center(
                  child: Text(
                    "Done",
                    style: Theme.of(context).textTheme.caption!.copyWith(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                color: Colors.green,
                width: width,
                height: height,
              ),
              onDragStarted: () {
                print("onDragStarted");
              },
              onDragCompleted: () {
                print("onDragCompleted");
              },
              onDraggableCanceled: (Velocity velocity, Offset offset) {
                setState(() => position = offset);
              },
            ),
          ),
        ],
      ),
    );
  }
}
