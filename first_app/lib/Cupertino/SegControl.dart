import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SegControl extends StatefulWidget {

  @override
  _SegControlState createState() => _SegControlState();
}

class _SegControlState extends State<SegControl> {

  final Map<int, Widget> logoWidgets = const <int, Widget>{
    0: Text('Logo 1'),
    1: Text('Logo 2'),
    2: Text('Logo 3'),
  };

  final Map<int, Widget> icons = const <int, Widget>{
    0: Center(
      child: FlutterLogo(
        size: 200.0,
      ),
    ),
    1: Center(
      child: FlutterLogo(
        size: 200.0,
      ),
    ),
    2: Center(
      child: FlutterLogo(
        size: 200.0,
      ),
    ),
  };

  int sharedValue = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.all(16.0),
        ),
        SizedBox(
          width: 500.0,
          child: CupertinoSegmentedControl<int>(
            children: logoWidgets,
            onValueChanged: (int val) {
              setState(() {
                sharedValue = val;
              });
            },
            groupValue: sharedValue,
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 32.0,
              horizontal: 16.0,
            ),
            child: Container(
              padding: const EdgeInsets.symmetric(
                vertical: 64.0,
                horizontal: 16.0,
              ),
              decoration: BoxDecoration(
                color: CupertinoColors.white,
                borderRadius: BorderRadius.circular(3.0),

              ),
              child: icons[sharedValue],
            ),
          ),
        ),
      ],
    );
  }
}
