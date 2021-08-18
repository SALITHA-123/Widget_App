import 'package:flutter/material.dart';

class AniDeText extends StatefulWidget {

  @override
  _AniDeTextState createState() => _AniDeTextState();
}

class _AniDeTextState extends State<AniDeText> {

  bool _first = true;
  double _fontSize = 40;
  Color _color = Colors.greenAccent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Default Text Style', style: TextStyle(fontSize: 30,),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            height: 120,
            width: 300,
            margin: EdgeInsets.all(12),
            child: AnimatedDefaultTextStyle(
              duration: const Duration(milliseconds: 500),
              style: TextStyle(
                fontSize: _fontSize,
                color: _color,
                fontWeight: FontWeight.bold,
              ),
              child: Text('HELLO'),
            ),
          ),
          FlatButton(
            onPressed: () {
              setState(() {
                _fontSize = _first ? 90 : 60;
                _color = _first ? Colors.blue : Colors.red;
                _first = !_first;
              });
            },
            child: Text(
              "CLICK HERE",
            ),
          )
        ],
      ),
    );
  }
}
