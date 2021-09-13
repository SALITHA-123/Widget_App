import 'package:flutter/material.dart';

class IgnoPointer extends StatefulWidget {

  @override
  _IgnoPointerState createState() => _IgnoPointerState();
}

class _IgnoPointerState extends State<IgnoPointer> {

  int _counter = 0;

  void _incrementCounter1() {
    setState(() {
      _counter++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ignore Pointer', style: TextStyle(fontSize: 30,),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ), //Text
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ), //Text

            RaisedButton(
              onPressed: _incrementCounter1,
              color: Colors.cyan,
              child: Icon(
                Icons.add,
                color: Colors.white,
              ), //Icon
            ),
          ],
        ),
      ),
    );
  }
}
