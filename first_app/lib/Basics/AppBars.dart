import 'package:flutter/material.dart';

class AppBars extends StatefulWidget {

  @override
  _AppBarsState createState() => _AppBarsState();
}

class _AppBarsState extends State<AppBars> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: AppBar(title: Text("This is an AppBar",
          style: TextStyle(
          fontFamily: "Roboto",
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.grey.shade800,
        ),
      ),
           centerTitle: true,
           titleSpacing: 1,
           backgroundColor: Colors.greenAccent,
      ),
    );
  }
}
