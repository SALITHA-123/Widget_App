import 'package:flutter/material.dart';

class FluttRows extends StatefulWidget {

  @override
  _FluttRowsState createState() => _FluttRowsState();
}

class _FluttRowsState extends State<FluttRows> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(title: Text('Container', style: TextStyle(fontSize: 30,),),
            centerTitle: true,
            backgroundColor: Colors.blue,
          ),
      body: Container(
        height: 100,
        width: 400,
        margin: EdgeInsets.all(12),
        alignment: Alignment.center,
        color: Colors.yellowAccent,
        child: Row(
          children: [
            FlutterLogo(
              size: 70,
            ),
            const Text('This is Flutter Rows',
                style: const TextStyle(color: Colors.teal,fontSize: 25)),
            Icon(Icons.widgets),
          ],
        ),
      ),
    );
  }
}
