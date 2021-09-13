import 'package:flutter/material.dart';

class Stacks extends StatefulWidget {
  @override
  _StacksState createState() => _StacksState();
}

class _StacksState extends State<Stacks> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text('Stack', style: TextStyle(fontSize: 30,),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
        body: Center(
          child: SizedBox(
            width: 300,
            height: 300,
            child: Center(
              child: Stack(
                children: <Widget>[
                  Container(
                    alignment: Alignment.bottomLeft,
                    width: 300,
                    height: 300,
                    color: Colors.red,
                    child: Text('Stack',style: TextStyle(fontSize: 25),),
                  ),
                  Container(
                    alignment: Alignment.bottomLeft,
                    width: 250,
                    height: 250,
                    color: Colors.greenAccent,
                    child: Text('is',style: TextStyle(fontSize: 25),),
                  ),
                  Container(
                    alignment: Alignment.bottomLeft,
                    height: 200,
                    width: 200,
                    color: Colors.purple,
                    child: Text('This',style: TextStyle(fontSize: 25),),
                  ),
                ],
              ),
            ),
          ),
        ),
    );
  }
}
