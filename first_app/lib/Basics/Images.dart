import 'package:flutter/material.dart';

class FluttImage extends StatefulWidget {

  @override
  _FluttImageState createState() => _FluttImageState();
}

class _FluttImageState extends State<FluttImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Images', style: TextStyle(fontSize: 30,),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body:  Center(
    child: Column(
    children: <Widget>[
    Image.network(
    'https://image.winudf.com/v2/image1/Y29tLnJvdmlvLmFiY2FzdWFsX2ljb25fMTYxMDY0NDc2MV8wNDQ/icon.png?w=&fakeurl=1',
    ),
    ],
    ),
      )
    );
  }
}
