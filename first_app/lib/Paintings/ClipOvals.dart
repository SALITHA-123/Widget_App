import 'package:flutter/material.dart';

class ClipOvals extends StatefulWidget {

  @override
  _ClipOvalsState createState() => _ClipOvalsState();
}

class _ClipOvalsState extends State<ClipOvals> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Black Drop", style: TextStyle(fontSize: 30,),),
        centerTitle: true,
      backgroundColor: Colors.blue,
    ),
      body: ClipOval(
        clipBehavior: Clip.hardEdge,
    child: Image.network(
    'https://image.winudf.com/v2/image1/Y29tLnJvdmlvLmFiY2FzdWFsX2ljb25fMTYxMDY0NDc2MV8wNDQ/icon.png?w=&fakeurl=1',
    ),
    ),
    );
  }
}
