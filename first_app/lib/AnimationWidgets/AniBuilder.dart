import 'dart:math';

import 'package:flutter/material.dart';

class AniBuilder extends StatefulWidget {

  @override
  _AniBuilderState createState() => _AniBuilderState();
}

class _AniBuilderState extends State<AniBuilder>  with TickerProviderStateMixin{
  late AnimationController _controller;

  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 5),
      vsync:this,
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Builder/Widget'),
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: _controller,
          child: Container(
            width: 200.0,
            height: 200.0,
            color: Colors.greenAccent,
            child: const Center(
              child: Text(
                'Hello World',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
            ),
          ),
          builder: (BuildContext context, Widget? child) {
            return Transform.rotate(
              angle: _controller.value * 2 * pi,
              child: child,
            );
          },
        ),
      ),
    );
  }
}
