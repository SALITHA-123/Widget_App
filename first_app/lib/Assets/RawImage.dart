import 'package:flutter/material.dart';

class Rimage extends StatefulWidget {

  @override
  _RimageState createState() => _RimageState();
}

class _RimageState extends State<Rimage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Text('Raw Image', style: TextStyle(fontSize: 30,),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
    );
  }
}
