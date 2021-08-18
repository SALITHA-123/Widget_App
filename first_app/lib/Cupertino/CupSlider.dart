import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class CupSlid extends StatefulWidget {

  @override
  _CupSlidState createState() => _CupSlidState();
}

class _CupSlidState extends State<CupSlid> {
  bool _value = false;
  double val = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Text('Cupertino Slider', style: TextStyle(fontSize: 30,),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Container(
          height: 100,
          child:Slider(
            value: val,
            onChanged: ( double value) {
              setState(() {
                val = value;
              });
            },
          )
      )
    );
  }
}
