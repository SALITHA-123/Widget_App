import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupScaff extends StatefulWidget {

  @override
  _CupScaffState createState() => _CupScaffState();
}

class _CupScaffState extends State<CupScaff> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        // Try removing opacity to observe the lack of a blur effect and of sliding content.
        backgroundColor: CupertinoColors.activeGreen,
        middle: const Text('Cupertino Scaffold'),
      ),
      child : Container(
        // height: 200,
        // width: 200,
        // margin: EdgeInsets.all(20),
        // alignment: Alignment.center,
        // color: Colors.yellowAccent,
        // child: Row(
        //   children: [
        //     FlutterLogo(
        //       size: 70,
        //     ),
        //     const Text('This is Cupertino Navigation Bar',
        //         style: const TextStyle(color: Colors.teal,fontSize: 15)),
        //     Icon(Icons.widgets),
        //   ],
        // ),
      ),
    );
  }
}
