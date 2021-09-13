import 'package:flutter/material.dart';

class DraTarget extends StatefulWidget {

  @override
  _DraTargetState createState() => _DraTargetState();
}

class _DraTargetState extends State<DraTarget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Drag Target', style: TextStyle(fontSize: 30,),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
    );
  }
}
