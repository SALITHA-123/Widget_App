import 'package:flutter/material.dart';

class AniAlign extends StatefulWidget{

  @override
  _AniAlignState createState() => _AniAlignState();
}

class _AniAlignState extends State<AniAlign> {

  AlignmentGeometry _alignment = Alignment.topLeft;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(
              title: Text('Animated Align'),
            ),
            body: Center(
              child: Column(
                children: [
                  Container(

                    width: 200,
                    height: 200,
                    alignment: Alignment(0,0),
                    decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)
                        )
                    ),
                    child: AnimatedAlign(
                      alignment: _alignment,
                      duration: Duration(seconds: 4),
                      child: Container(
                        color: Colors.white,
                        child: const Text('Hello World', style: TextStyle(color: Colors.red,fontSize: 20)),
                      ),
                    ),
                  ),
                  TextButton(
                    child: const Text('Start',),
                    onPressed: () {
                      setState(() {
                        _alignment = _alignment == Alignment.topLeft
                            ? Alignment.bottomRight
                            : _alignment = Alignment.topLeft;
                      });
                    },
                  ),
                ],
              ),
            ),
          );
  }
}
