import 'dart:async';

import 'package:flutter/material.dart';

class StepperWid extends StatefulWidget {
  const StepperWid({Key? key}) : super(key: key);

  @override
  _StepperWidState createState() => _StepperWidState();
}

class _StepperWidState extends State<StepperWid> with SingleTickerProviderStateMixin {
  var _visible = true;

  late AnimationController animationController;
  late Animation<double> animation;

  startTime() async {
    var _duration = new Duration(seconds: 3);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context);
  }

  @override
  void initState() {
    super.initState();
    animationController = new AnimationController(
        vsync: this, duration: new Duration(seconds: 2));
    animation =
    new CurvedAnimation(parent: animationController, curve: Curves.easeOut);

    animation.addListener(() => this.setState(() {}));
    animationController.forward();

    setState(() {
      _visible = !_visible;
    });
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Column(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.only(bottom: 30.0),
                  child: new Image.asset(
                    'assets/images/powered_by.png',
                    height: 25.0,
                    fit: BoxFit.scaleDown,
                  ))
            ],
          ),
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6odEzmlofhy1x5B4gB9MlRJRKOr9QwhulXEhTHZd58Wh2bZhDgq_KjlA7akUCpY7zsGA&usqp=CAU',
                width: animation.value * 250,
                height: animation.value * 250,)
            ],
          ),
        ],
      ),
    );
  }
}
