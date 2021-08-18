import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DiaAction extends StatefulWidget {

  @override
  _DiaActionState createState() => _DiaActionState();
}

class _DiaActionState extends State<DiaAction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Action Sheet', style: TextStyle(fontSize: 30,),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),

    );
  }
}

