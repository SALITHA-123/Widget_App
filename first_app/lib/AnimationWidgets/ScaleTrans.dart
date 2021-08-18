import 'package:flutter/material.dart';

class ScaleTrans extends StatefulWidget {

  @override
  _ScaleTransState createState() => _ScaleTransState();
}

class _ScaleTransState extends State<ScaleTrans>with TickerProviderStateMixin {

  late AnimationController _controller;
  late Animation<double> _animation;

  initState() {
    super.initState();
    _controller = AnimationController(
        duration: const Duration(milliseconds: 2000), vsync: this, value: 0.1);
    _animation = CurvedAnimation(parent: _controller, curve: Curves.bounceInOut);

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
      appBar: AppBar(title: Text('Scale Transition', style: TextStyle(fontSize: 30,),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Container(
          color: Colors.white,
          child: ScaleTransition(
              scale: _animation,
              alignment: Alignment.center,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    Icon(Icons.check, size: 100.0,color: Colors.green),
                  ]
              )
          )
      ),
    );
  }
}
