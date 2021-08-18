import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupTimerPick extends StatefulWidget {

  @override
  _CupTimerPickState createState() => _CupTimerPickState();
}

class _CupTimerPickState extends State<CupTimerPick> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Timer Picker', style: TextStyle(fontSize: 30,),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Container(
        height: 300,
        child: CupertinoTimerPicker(
            mode: CupertinoTimerPickerMode.hms,
          onTimerDurationChanged: (Duration value) {  },

        ),
      ),
    );
  }
}
