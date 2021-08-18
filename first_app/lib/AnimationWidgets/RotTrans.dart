import 'package:flutter/material.dart';

class RotTrans extends StatefulWidget {

  @override
  _RotTransState createState() => _RotTransState();
}

class _RotTransState extends State<RotTrans>with TickerProviderStateMixin {

  late AnimationController _controller;
  late Animation<double> _animation;

  initState() {
    super.initState();
    _controller = AnimationController(
        duration: const Duration(milliseconds: 2000),
        vsync: this,
        value: 0.25,
        lowerBound: 0.25,
        upperBound: 0.5
    );
    _animation = CurvedAnimation(parent: _controller, curve: Curves.linear);

    _controller.forward();
  }

  @override
  dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Rotation Transition', style: TextStyle(fontSize: 30,),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
      child: RotationTransition(
      turns: _animation,
      alignment: Alignment(0.1, 0.1),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Text('Hello...!', style: TextStyle(color: Colors.teal, fontSize: 36))
          ]
          ),
        ),
      )
    );
  }
}
