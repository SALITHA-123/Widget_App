import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ActIndicator extends StatefulWidget {


  @override
  _ActIndicatorState createState() => _ActIndicatorState();
}

class _ActIndicatorState extends State<ActIndicator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Text('Activity Indicator', style: TextStyle(fontSize: 30,),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
                child:Container(
                  margin: EdgeInsets.all(12),
                  alignment: Alignment(0,5),
                  height: 100,
                  width: 100,
                  child:CupertinoActivityIndicator(
                      animating: true,
                      radius: 30,
                    ),
                )
            )
          ],
        ),
      ),
    );
  }
}
