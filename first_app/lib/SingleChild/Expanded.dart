import 'package:flutter/material.dart';

class Expand extends StatefulWidget {
  const Expand({Key? key}) : super(key: key);

  @override
  _ExpandState createState() => _ExpandState();
}

class _ExpandState extends State<Expand> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Expanded', style: TextStyle(fontSize: 30,),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body:  SizedBox(
        height: 100,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  width: 50,
                  color: Colors.red,
                ),
              ),
              Expanded(
                flex: 4,
                child: Container(
                  color: Colors.green,
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  width: 50,
                  color: Colors.yellow,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
