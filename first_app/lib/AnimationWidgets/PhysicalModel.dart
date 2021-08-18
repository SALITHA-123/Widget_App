import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PhyModel extends StatefulWidget {

  @override
  _PhyModelState createState() => _PhyModelState();
}

class _PhyModelState extends State<PhyModel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Physical Model', style: TextStyle(fontSize: 30,),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: PhysicalModel(
        elevation: 6.0,
        shape: BoxShape.rectangle,
        shadowColor: Colors.black,
        color: Colors.white,
        child: Container(
          alignment: Alignment.center,
          height: 200,
          width: 200,
          color: Colors.blue[50],
          child: FlutterLogo(
            size: 60,
          ),
        ),
      ),
    );
  }
}
