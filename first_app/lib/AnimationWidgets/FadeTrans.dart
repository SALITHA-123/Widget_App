import 'package:flutter/material.dart';

class FadeTrans extends StatefulWidget {

  @override
  _FadeTransState createState() => _FadeTransState();
}

class _FadeTransState extends State<FadeTrans> with TickerProviderStateMixin  {


  late AnimationController _controller;
  late Animation<double> _animation;

  initState() {
    super.initState();

    _controller = AnimationController(
        duration: const Duration(milliseconds: 5000),
        vsync: this,
        value: 0,
        lowerBound: 0,
        upperBound: 1
    );
    _animation = CurvedAnimation(parent: _controller, curve: Curves.fastOutSlowIn);

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
      appBar: AppBar(title: Text('Fade Transition', style: TextStyle(fontSize: 30,),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: FadeTransition(
          opacity: _animation,
          child: Center(
            child: Text('Hello World', style: TextStyle(color: Colors.teal, fontSize: 50)),
          ),
        ),
      ),
    );
  }
}
