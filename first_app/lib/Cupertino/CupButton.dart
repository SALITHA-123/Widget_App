import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupButton extends StatefulWidget {

  @override
  _CupButtonState createState() => _CupButtonState();
}

class _CupButtonState extends State<CupButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cupertino Button', style: TextStyle(fontSize: 30,),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(40),
            height: 200,
            width: 300,
            color: Colors.white60,
          ),
          CupertinoButton.filled(
            alignment: Alignment.topCenter,
            borderRadius: const BorderRadius.all(Radius.circular(8.0)),
            child: Text('Button'),
            onPressed: ()  {},
          ),
        ],
      ),
    );
  }
}
