import 'package:flutter/material.dart';

class PageVi extends StatefulWidget {

  @override
  _PageViState createState() => _PageViState();
}

class _PageViState extends State<PageVi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Page View', style: TextStyle(fontSize: 30,),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body:PageView(
        children: <Widget>[
          Container(
            color: Colors.pink,
          ),
          Container(
            color: Colors.cyan,
          ),
          Container(
            color: Colors.deepPurple,
          ),
        ],
      ) ,
    );
  }
}
