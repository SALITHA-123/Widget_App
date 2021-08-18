import 'package:flutter/material.dart';

class DecoBox extends StatefulWidget {

  @override
  _DecoBoxState createState() => _DecoBoxState();
}

class _DecoBoxState extends State<DecoBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Decorated Box", style: TextStyle(fontSize: 30,),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body:Container(
        alignment: Alignment(5,5),
        margin: EdgeInsets.all(70),
        width: 250,
        height: 200,
        decoration: BoxDecoration(
          color: Colors.greenAccent,
          border: Border.all(
            color: Colors.black,
            width: 10,
          ),
          gradient: LinearGradient(
            colors: [Colors.white, Colors.black26],
          ),
        ),
        child: Center(
            child: Text("Hello World", style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)
        ),
      ) ,
    );
  }
}
