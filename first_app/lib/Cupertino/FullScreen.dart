import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FullScreen extends StatefulWidget {

  @override
  _FullScreenState createState() => _FullScreenState();
}

class _FullScreenState extends State<FullScreen>  with SingleTickerProviderStateMixin{
  late AnimationController _animationController;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Text('Cupertino Fullscreen Dialog Transition', style: TextStyle(fontSize: 30,),),
        centerTitle: true,
        backgroundColor: Colors.blue,
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              CupertinoFullscreenDialogTransition(
                primaryRouteAnimation: _animationController,
                secondaryRouteAnimation: _animationController,
                linearTransition: false,
                child: Center(
                  child: Container(
                    color: Colors.blueGrey,
                    width: 300,
                    height: 300,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  RaisedButton(
                    onPressed: () => _animationController.forward(),
                    child: Text('Forward'),
                  ),
                  RaisedButton(
                    onPressed: () => _animationController.reverse(),
                    child: Text('Reverse'),
                  ),
                ],
              ),
            ],
          ),
        )
    );
  }
}