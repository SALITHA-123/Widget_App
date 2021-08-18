import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContMenu extends StatefulWidget {

  @override
  _ContMenuState createState() => _ContMenuState();
}

class _ContMenuState extends State<ContMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Context Menu', style: TextStyle(fontSize: 30,),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: CupertinoContextMenu(
        child: Container(
          margin: EdgeInsets.all(40),
          width: 300,
          height: 150,
          decoration: BoxDecoration(
              color: Colors.blueAccent,
            borderRadius: BorderRadius.all(Radius.circular(10))
          ),
        ),
        actions: <Widget>[
          CupertinoContextMenuAction(
            child: const Text('Action one'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          CupertinoContextMenuAction(
            child: const Text('Action two'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
