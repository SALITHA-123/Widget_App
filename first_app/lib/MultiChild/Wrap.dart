import 'package:flutter/material.dart';

class Wraps extends StatefulWidget {
  const Wraps({Key? key}) : super(key: key);

  @override
  _WrapsState createState() => _WrapsState();
}

class _WrapsState extends State<Wraps> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Wrap', style: TextStyle(fontSize: 30,),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Wrap(
        children: <Widget>[
          Container(
              color: Colors.green,
              width: 100,
              height: 100,
              child:Center(child: Text("W1",textScaleFactor: 2.5,))
          ),
          Container(
              color: Colors.red,
              width: 100,
              height: 100,
              child:Center(child: Text("W2",textScaleFactor: 2.5,))
          ),
          Container(
              color: Colors.teal,
              width: 100,
              height: 100,
              child:Center(child: Text("W3",textScaleFactor: 2.5,))
          ),
          Container(
              color: Colors.indigo,
              width: 100,
              height: 100,
              child:Center(child: Text("W4",textScaleFactor: 2.5,))
          ),
          Container(
              color: Colors.orange,
              width: 100,
              height: 100,
              child:Center(child: Text("W5",textScaleFactor: 2.5,))
          ),
        ],
      ),
    );
  }
}
