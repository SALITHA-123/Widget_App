import 'package:flutter/material.dart';

class Paddings extends StatefulWidget {

  @override
  _PaddingsState createState() => _PaddingsState();
}

class _PaddingsState extends State<Paddings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Padding',style: TextStyle(fontSize: 30),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ), //AppBar
      //Padding is the parent widget in the app body
      body: Padding(
        padding: EdgeInsets.all(120),
        child: Container(
          padding: const EdgeInsets.fromLTRB(50, 120, 10, 10),
          color: Colors.yellowAccent,
          width: 300.0,
          height: 300.0,
          child: Text(
            'Hello World',
            style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25,),
          ), //Text
        ),
      ),
    );
  }
}
