import 'package:flutter/material.dart';

class AniOpacity extends StatefulWidget {

  @override
  _AniOpacityState createState() => _AniOpacityState();
}

class _AniOpacityState extends State<AniOpacity> {

  double opacityLevel = 1.0;
  void _changeOpacity() {
    setState(() => opacityLevel = opacityLevel == 0 ? 1.0 : 0.0);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Animated Opacity', style: TextStyle(fontSize: 30,),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          AnimatedOpacity(
            opacity: opacityLevel,
            duration: const Duration(seconds: 3),
            child: const FlutterLogo(
              size: 500,
            ),
          ),
          ElevatedButton(
            child: const Text('Click Here'),
            onPressed: _changeOpacity,
          ),
        ],
      ),
    );
  }
}
