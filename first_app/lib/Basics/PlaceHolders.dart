import 'package:flutter/material.dart';

class Holders extends StatefulWidget {

  @override
  _HoldersState createState() => _HoldersState();
}

class _HoldersState extends State<Holders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Place Holder', style: TextStyle(fontSize: 30,),),
    centerTitle: true,
    backgroundColor: Colors.blue,
    ),
      body: Column(
          children: <Widget>[
          Container(
          child: Placeholder()
                ),
           Expanded(
                  child: Row(
                    children: <Widget>[
                  Flexible(flex: 1,
                  child: Placeholder(),
                  ),
                  Flexible(flex: 4,
                  child: Placeholder(),
                  ),
                ]
              ),
            )
          ]
      ),
    );
  }
}
