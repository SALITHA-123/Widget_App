import 'package:flutter/material.dart';

class Scroll extends StatefulWidget {
  const Scroll({Key? key}) : super(key: key);

  @override
  _ScrollState createState() => _ScrollState();
}

class _ScrollState extends State<Scroll> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Scrollable', style: TextStyle(fontSize: 30,),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
            Container(
            color: const Color(0xffeeee00),
            height: 300.0,
            alignment: Alignment.center,
            child: const Text('Fixed Height Content'),
            ),
            Container(
            color: const Color(0xff008000),
            height: 250.0,
            alignment: Alignment.center,
            child: const Text('Fixed Height Content'),
            ),
              Container(
                color: Colors.blue,
                height: 300.0,
                alignment: Alignment.center,
                child: const Text('Fixed Height Content'),
              ),
              Container(
                color:Colors.red,
                height: 250.0,
                alignment: Alignment.center,
                child: const Text('Fixed Height Content'),
              ),
    ],
    ),
      )
    );
  }
}
