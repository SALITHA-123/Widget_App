import 'package:flutter/material.dart';

class SlideTrans extends StatefulWidget {

  @override
  _SlideTransState createState() => _SlideTransState();
}

class _SlideTransState extends State<SlideTrans> with TickerProviderStateMixin{
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    )..forward();
    _animation = Tween<Offset>(
      begin: const Offset(-0.5, 0.0),
      end: const Offset(0.5, 0.0),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInCubic,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Slide Transition', style: TextStyle(fontSize: 30,),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Builder(
        builder: (context) => Center(
          child: SlideTransition(
            position: _animation,
            transformHitTests: true,
            textDirection: TextDirection.ltr,
            child: RaisedButton(
              child: Text('Slide Transition'),
              onPressed: () {
                Scaffold.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Stopped...!!'),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
