import 'package:flutter/material.dart';

class Scrol extends StatefulWidget {

  @override
  _ScrolState createState() => _ScrolState();
}

class _ScrolState extends State<Scrol> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Scroll Bar', style: TextStyle(fontSize: 30,),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Scrollbar(
        child: GridView.builder(
          itemCount: 120,
          gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemBuilder: (BuildContext context, int index) {
            return Center(
              child: Text('item $index'),
            );
          },
        ),
      ),
    );
  }
}
