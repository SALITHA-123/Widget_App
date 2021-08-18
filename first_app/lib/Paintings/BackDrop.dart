
import 'dart:ui';

import 'package:flutter/material.dart';

class BackDrop extends StatefulWidget {

  @override
  _BackDropState createState() => _BackDropState();
}

class _BackDropState extends State<BackDrop> {

  @override
  Widget build(BuildContext context) {
  return Scaffold(
      appBar: AppBar(title: Text("Black Drop", style: TextStyle(fontSize: 30,),),
        centerTitle: true,
        backgroundColor: Colors.blue,
    ),
    body:Stack(
    children: <Widget>[
      Image.network(
        'https://tile.loc.gov/image-services/iiif/service:pnp:highsm:13600:13696/full/pct:12.5/0/default.jpg',
      ),
      Positioned(
        top: 30,
        left: 100,
        width: 200,
        height: 250,
        child: ClipRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: Container(
              color: Colors.black.withOpacity(0),
            ),
          ),
        ),
      )
    ],
    )
  );
  }
}
