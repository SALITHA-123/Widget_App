import 'package:flutter/material.dart';

class AlignWid extends StatefulWidget {

  @override
  _AlignWidState createState() => _AlignWidState();
}

class _AlignWidState extends State<AlignWid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Align', style: TextStyle(fontSize: 30,),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Container(
        width: 400,
        height: 300,
        color: Colors.greenAccent,
        child: const Align(
          alignment: Alignment.topCenter,
          child: const Text(
              'Hello World',
              style: TextStyle(fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold)
          ),
        ),
      ),
    );
  }
}
