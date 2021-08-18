import 'package:flutter/material.dart';

class Opacit extends StatefulWidget {

  @override
  _OpacitState createState() => _OpacitState();
}

class _OpacitState extends State<Opacit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Opacity", style: TextStyle(fontSize: 30,),),
    centerTitle: true,
    backgroundColor: Colors.blue,
    ),
      body: Opacity(
        opacity: 0.4,
        child: Container(
          margin: EdgeInsets.all(80),
          width: 200,
          height: 200,
          decoration: BoxDecoration(
                color: Colors.red,
                 borderRadius: BorderRadius.all(
                 Radius.circular(10)
          ),
        ),
        ),
      )
    );
  }
}
