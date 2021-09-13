import 'package:flutter/material.dart';

class PaddingsWid extends StatefulWidget {
  const PaddingsWid({Key? key}) : super(key: key);

  @override
  _PaddingsWidState createState() => _PaddingsWidState();
}

class _PaddingsWidState extends State<PaddingsWid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Padding', style: TextStyle(fontSize: 30,),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Row(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(10.0),
              width: 100,
              height: 100,
              color: Colors.red,
            ), //Container
            /*Padding widget*/
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Container(
                padding: const EdgeInsets.all(0.0),
                color: Colors.green,
                width: 100.0,
                height: 100.0,
              ), //Container
            ), //Padding
            Container(
              padding: const EdgeInsets.all(10.0),
              width: 100,
              height: 100,
              color: Colors.red,
            )
          ],
        ),
      ),
    );
  }
}
