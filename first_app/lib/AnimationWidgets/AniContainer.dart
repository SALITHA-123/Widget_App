import 'package:flutter/material.dart';

class AniContainer extends StatefulWidget {

  @override
  _AniContainerState createState() => _AniContainerState();
}

class _AniContainerState extends State<AniContainer> {

  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
        title: Text('Animated Align'),
    ),
    body: Center(
    child:  GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: Center(
        child: AnimatedContainer(
          width: selected ? 250.0 : 150.0,
          height: selected ? 100.0 : 200.0,
          color: selected ? Colors.green : Colors.blue,
          alignment:
          selected ? Alignment.center : AlignmentDirectional.topCenter,
          duration: const Duration(seconds: 2),
          curve: Curves.fastOutSlowIn,
          child:Text(
            "Hello World",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
            ),
           ),
         ),
        ),
      ),
    );
  }
}
