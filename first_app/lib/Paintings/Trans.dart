import 'dart:math';

import 'package:flutter/material.dart';

class Trans extends StatefulWidget {

  @override
  _TransState createState() => _TransState();
}

class _TransState extends State<Trans> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Transform", style: TextStyle(fontSize: 30,),),
        centerTitle: true,
        backgroundColor: Colors.blue,
        ),
        body: Container(
          color: Colors.black,
          margin: EdgeInsets.all(80),
          child: Transform(
            alignment: Alignment.topCenter,
            transform: Matrix4.skewY(0.3)..rotateZ(pi / 12.0),
            child: Container(
              width: 250,
                height: 80,
              padding: const EdgeInsets.all(8.0),
              color: const Color(0xFFE8581C),
              child: const Text('This Is Transform',style: TextStyle(fontSize: 25),),
            ),
          ),
        )
    );
  }
}
