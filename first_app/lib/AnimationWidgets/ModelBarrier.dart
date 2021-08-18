import 'package:flutter/material.dart';

class ModBarrier extends StatefulWidget {

  @override
  _ModBarrierState createState() => _ModBarrierState();
}

class _ModBarrierState extends State<ModBarrier> with SingleTickerProviderStateMixin {

  bool _isLoading = false;
  late Widget _animatedModalBarrier;
  late AnimationController _animationController;
  late Animation<Color?> _colorTweenAnimation;

  @override
  void initState() {
    ColorTween  _colorTween = ColorTween(
      begin: Color.fromARGB(100, 255, 255, 255),
      end: Color.fromARGB(100, 127, 127, 127),
    );

    _animationController = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 3)
    );
    _colorTweenAnimation = _colorTween.animate(_animationController);

    _animatedModalBarrier = AnimatedModalBarrier(
      color: _colorTweenAnimation,
      dismissible: true,
    );

    super.initState();
  }

  List<Widget> buildWidgetList(BuildContext context) {
    List<Widget> widgets = <Widget>[
      RaisedButton(
        child: Text('Button'),
        onPressed: () {
          setState(() {
            _isLoading = true;
          });

          _animationController.reset();
          _animationController.forward();

          Scaffold.of(context).showSnackBar(
              SnackBar(content: Text('Hello World',style: TextStyle(fontSize: 25),))
          );

          Future.delayed(const Duration(seconds: 5), () {
            setState(() {
              _isLoading = false;
            });
          });
        },
      ),
    ];

    if (_isLoading) {
      widgets.add(_animatedModalBarrier);
    }

    return widgets;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Model Barrier', style: TextStyle(fontSize: 30,),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
            body: Builder(
            builder: (context) => Center(
              child: Padding(
              padding: EdgeInsets.all(15.0),
               child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                  height: 100.0,
                  width: 250.0,
                  // alignment: FractionalOffset.center,
                  child: new Stack(
                  alignment: AlignmentDirectional.center,
                    children: buildWidgetList(context),
                    ),
                  ),
               ],
             ),
          ),
        ),
      ),
    );
  }
}
