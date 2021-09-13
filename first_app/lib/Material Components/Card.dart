import 'package:flutter/material.dart';

class CardWid extends StatefulWidget {
  const CardWid({Key? key}) : super(key: key);

  @override
  _CardWidState createState() => _CardWidState();
}

class _CardWidState extends State<CardWid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Cards', style: TextStyle(fontSize: 30,),),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
      body: Center(
        child: Container(
          width: 200,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            color: Colors.greenAccent,
            elevation: 10,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  leading: Icon(Icons.face, size: 70),
                  title: Text('Flutter', style: TextStyle(color: Colors.white)),
                  subtitle: Text('Cards', style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
