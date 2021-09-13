import 'package:flutter/material.dart';

class GesDetector extends StatefulWidget {

  @override
  _GesDetectorState createState() => _GesDetectorState();
}

class _GesDetectorState extends State<GesDetector> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Gesture Detector', style: TextStyle(fontSize: 30,),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body:  Center(
        child: GestureDetector(
          onTap: () {
            print('onTap');
            Feedback.forTap(context);
          },
          onLongPress: () {
            print('onLongPress');
            Feedback.forLongPress(context);
          },
          child: RaisedButton(
            onPressed: () {  },
            child: Text('Click'),
          ),
        ),
      ),
    );
  }
}
