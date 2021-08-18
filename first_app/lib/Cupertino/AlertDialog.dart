import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AleDialog extends StatefulWidget {

  @override
  _AleDialogState createState() => _AleDialogState();
}

class _AleDialogState extends State<AleDialog> {
  _showDialog(BuildContext context) {
      CupertinoAlertDialog alert = CupertinoAlertDialog(
        title: Text('Alert'),
        content: Text('This is Alert Dialog'),
        actions: [
          CupertinoDialogAction(
            child: Text('OK'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      );

      return showCupertinoDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        },
      );
    }
    @override
    Widget build(BuildContext context) {
      return Scaffold(
          appBar:AppBar(title: Text('Activity Indicator', style: TextStyle(fontSize: 30,),),
            centerTitle: true,
            backgroundColor: Colors.blue,
          ),
          body: Center(
              child: RaisedButton(
                child: Text('Open'),
                onPressed: () => _showDialog(context),
              )
          )
      );
    }
  }