import 'package:flutter/material.dart';

class BaselineWid extends StatefulWidget {
  @override
  _BaselineWidState createState() => _BaselineWidState();
}

class _BaselineWidState extends State<BaselineWid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Baseline', style: TextStyle(fontSize: 30,),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          color: Colors.teal,
          child: Baseline(
            baseline: 0,
            baselineType: TextBaseline.alphabetic,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}
