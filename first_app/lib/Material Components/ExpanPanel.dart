import 'package:flutter/material.dart';

class ExpanPanel extends StatefulWidget {
  const ExpanPanel({Key? key}) : super(key: key);

  @override
  _ExpanPanelState createState() => _ExpanPanelState();
}

class _ExpanPanelState extends State<ExpanPanel> {
  bool active = false;
  String exTitle = "Sport Categories";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Expansion Panel', style: TextStyle(fontSize: 30,),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
    );
  }
}
