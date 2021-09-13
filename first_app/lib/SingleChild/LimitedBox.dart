import 'dart:math';

import 'package:flutter/material.dart';

class LimitBox extends StatefulWidget {
  const LimitBox({Key? key}) : super(key: key);

  @override
  _LimitBoxState createState() => _LimitBoxState();
}

class _LimitBoxState extends State<LimitBox> {
  final length = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Limited Box', style: TextStyle(fontSize: 30,),),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body:
        ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: length,
            itemBuilder: (BuildContext context, int index) {
              return LimitedBox(
                maxHeight: 200,
                child: Container(
                  color: UniqueColorGenerator.getColor(),
                ),
              );
            }
        )
    );
  }
}
class UniqueColorGenerator {
  static Random random = new Random();
  static Color getColor() {
    return Color.fromARGB(255, random.nextInt(255), random.nextInt(255), random.nextInt(255));
  }
}
