import 'package:flutter/material.dart';

class Text01 extends StatefulWidget {

  @override
  _Text01State createState() => _Text01State();
}

class _Text01State extends State<Text01> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Text",
            textAlign: TextAlign.center,
            style: TextStyle(
            fontFamily: "Roboto",
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.grey.shade800,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
                child:Container(
                  margin: EdgeInsets.all(12),
                  alignment: Alignment(0,5),
                  height: 100,
                  width: 100,
                  child:Text(
                       'My First Application',
                       textAlign: TextAlign.center,
                       overflow: TextOverflow.ellipsis,
                       style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.green,
                     ) ,
                ),
              )
            )
          ],
        ),
      )
    );
  }
}
