import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupPick extends StatefulWidget {

  @override
  _CupPickState createState() => _CupPickState();
}

class _CupPickState extends State<CupPick> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cuperino Picker', style: TextStyle(fontSize: 30,),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body:Container(
        alignment: Alignment.center,
          margin: EdgeInsets.all(60),
          width: 300,
          height: 250,
          child: CupertinoPicker(
                backgroundColor: Colors.white,
                itemExtent: 30,
                scrollController: FixedExtentScrollController(initialItem: 1),
                children: [
                Text('Sunday'),
                Text('Monday'),
                Text('Tuesday'),
                Text('Wednesday'),
                Text('Thursday'),
                Text('Friday'),
                Text('Saturday'),
                ],
          onSelectedItemChanged: (value) {
            setState(() {
              }
            );
          },
        ),
      ),
    );
  }
}
