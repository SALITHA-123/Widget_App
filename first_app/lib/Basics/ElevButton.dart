import 'package:flutter/material.dart';

class ElevButton extends StatefulWidget {

  @override
  _ElevButtonState createState() => _ElevButtonState();
}

class _ElevButtonState extends State<ElevButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Elevated Button', style: TextStyle(fontSize: 30,),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.purple,
          ),
          child: Text('Submit',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
          onPressed: () {
            print('Pressed');
          },
        ),
      ),
    );
  }
}
