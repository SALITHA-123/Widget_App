import 'package:flutter/material.dart';

class MeQuery extends StatefulWidget {

  @override
  _MeQueryState createState() => _MeQueryState();
}

class _MeQueryState extends State<MeQuery> {

  var size,height,width;

  @override
  Widget build(BuildContext context) {

    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text("Media Query",style: TextStyle(fontSize: 30),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Container(
        color: Colors.yellow,
        transformAlignment: Alignment.center,
        height: height/2,//half of the height size
        width: width/2,//half of the width size
      ),
    );
  }
}
