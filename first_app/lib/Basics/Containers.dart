import 'package:flutter/material.dart';

class Constrainers extends StatefulWidget {

  @override
  _ConstrainersState createState() => _ConstrainersState();
}

class _ConstrainersState extends State<Constrainers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Container', style: TextStyle(fontSize: 30,),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Container(
            margin: EdgeInsets.all(12),
            alignment: Alignment(0,0),
            height: 300,
            width: 400,
            decoration: BoxDecoration(
            color: Colors.yellow,
            borderRadius: BorderRadius.all(
                Radius.circular(10)
            )
        ),
        child:  Text('This is Container',
            textAlign: TextAlign.center,
            style: new TextStyle(
              fontSize: 25.0,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.bold,
              color: Colors.grey.shade800,
            )
        ),
      ),
    );
  }
}
