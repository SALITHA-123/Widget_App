import 'package:flutter/material.dart';

class FacTrans extends StatefulWidget {

  @override
  _FacTransState createState() => _FacTransState();
}

class _FacTransState extends State<FacTrans> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(title: Text("Fractional Translation", style: TextStyle(fontSize: 30,),),
            centerTitle: true,
            backgroundColor: Colors.blue,
          ),
      body: Container(
        width: 250,
        height: 200,
        color: Colors.grey,
        child: const FractionalTranslation(
          transformHitTests: true,
          child: Text(
              'Hello World',
              style: TextStyle(color: Colors.teal, fontSize: 30)
          ),
          translation: const Offset(0.5, 1),
        ),
      ),
    );
  }
}
