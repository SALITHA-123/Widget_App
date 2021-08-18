import 'package:flutter/material.dart';

class ClipRects extends StatefulWidget {

  @override
  _ClipRectsState createState() => _ClipRectsState();
}

class _ClipRectsState extends State<ClipRects> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text("Clip Rect", style: TextStyle(fontSize: 30,),),
    centerTitle: true,
    backgroundColor: Colors.blue,
      ),
      body: ClipRect(
        clipBehavior: Clip.hardEdge,
        child: Container(
          child: Align(
            alignment: Alignment.center,
            widthFactor: 0.4,
            heightFactor: 1.0,
            child: Image.network(
                'https://image.winudf.com/v2/image1/Y29tLnJvdmlvLmFiY2FzdWFsX2ljb25fMTYxMDY0NDc2MV8wNDQ/icon.png?w=&fakeurl=1'
            ),
          ),
        ),
      ),
    );
  }
}
