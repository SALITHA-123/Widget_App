import 'package:flutter/material.dart';

class CentreWid extends StatefulWidget {

  @override
  _CentreWidState createState() => _CentreWidState();
}

class _CentreWidState extends State<CentreWid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Centre', style: TextStyle(fontSize: 30,),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Container(
          color: Colors.green,
          child: Text(
            'This is centre widget ',
            textScaleFactor: 3,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
