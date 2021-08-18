import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupSwitch extends StatefulWidget {

  @override
  _CupSwitchState createState() => _CupSwitchState();
}

class _CupSwitchState extends State<CupSwitch> {
bool _lights=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Text('Cupertino Switch', style: TextStyle(fontSize: 30,),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body:MergeSemantics(
        child: ListTile(
          title: const Text('Wifi',style: TextStyle(fontSize: 25,),),
          trailing: CupertinoSwitch(
            value: _lights,
            onChanged: (bool value) { setState(() { _lights = value; }); },
          ),
          onTap: () { setState(() { _lights = !_lights; }); },
        ),
      )
    );
  }
}
