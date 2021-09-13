import 'package:flutter/material.dart';

class IconButt extends StatefulWidget {
  const IconButt({Key? key}) : super(key: key);

  @override
  _IconButtState createState() => _IconButtState();
}

class _IconButtState extends State<IconButt> {
  bool _isBluetoothOn = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Icon Button', style: TextStyle(fontSize: 30,),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: IconButton(
          icon: Icon(Icons.bluetooth),
          iconSize: 80,
          onPressed: () {
            setState(() {
              _isBluetoothOn = !_isBluetoothOn;
            });
          },
        ),
      ),
    );
  }
}
