import 'package:flutter/material.dart';

class FluttLogo extends StatefulWidget {

  @override
  _FluttLogoState createState() => _FluttLogoState();
}

class _FluttLogoState extends State<FluttLogo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter Logo', style: TextStyle(fontSize: 30,),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body:  Center(
        child: Container(
          child: FlutterLogo(
            size: 300,
            textColor: Colors.blue,
            style: FlutterLogoStyle.stacked,
          ),
        ),
      ),
    );
  }
}
