import 'package:flutter/material.dart';

class RotBox extends StatefulWidget {

  @override
  _RotBoxState createState() => _RotBoxState();
}

class _RotBoxState extends State<RotBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Rotated Box', style: TextStyle(fontSize: 30,),),
    centerTitle: true,
    backgroundColor: Colors.blue,
      ),
      body:Container(
            margin: EdgeInsets.all(80),
            width: 200,
            height: 200,
            decoration: BoxDecoration(
            color: Colors.greenAccent,
            borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: RotatedBox(
         child: Text(
            'Hello World',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black, fontSize: 30),
        ),
        quarterTurns: 2,
      ),
    )
    );
  }
}
