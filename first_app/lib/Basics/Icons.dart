import 'package:flutter/material.dart';

class FlutIcon extends StatefulWidget {

  @override
  _FlutIconState createState() => _FlutIconState();
}

class _FlutIconState extends State<FlutIcon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Icons', style: TextStyle(fontSize: 30,),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const <Widget>[
          Icon(
            Icons.accessibility,
            color: Colors.pink,
            size: 36.0,
          ),
          Icon(
            Icons.airplanemode_active,
            color: Colors.green,
            size: 30.0,
          ),
          Icon(
            Icons.add_ic_call,
            color: Colors.blue,
            size: 36.0,
          ),
        ],
      ),
    );
  }
}
