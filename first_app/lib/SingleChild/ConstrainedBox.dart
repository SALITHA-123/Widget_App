import 'package:flutter/material.dart';

class ConstrainBox extends StatefulWidget {

  @override
  _ConstrainBoxState createState() => _ConstrainBoxState();
}

class _ConstrainBoxState extends State<ConstrainBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Constrained Box', style: TextStyle(fontSize: 30,),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints.expand(height: 200, width: 200),
          child: Container(
            alignment: Alignment.center,
            color: Colors.green,
            child: Text(
              'Constrained Box',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
