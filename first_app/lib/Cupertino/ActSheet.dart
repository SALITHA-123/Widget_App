import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ActSheet extends StatefulWidget {

  @override
  _ActSheetState createState() => _ActSheetState();
}

class _ActSheetState extends State<ActSheet> {
    void _show(BuildContext ctx) {
      showCupertinoModalPopup(
          context: ctx,
          builder: (_) => CupertinoActionSheet(
            actions: [
              CupertinoActionSheetAction(
                  onPressed: () {}, child: Text('Selection 01')),
              CupertinoActionSheetAction(
                  onPressed: () {}, child: Text('Selection 02')),
              CupertinoActionSheetAction(
                  onPressed: () {}, child: Text('Selection 03')),
            ],
            cancelButton: CupertinoActionSheetAction(
              onPressed: () => _close(ctx),
              child: Text('Close'),
            ),
          ));
    }

    void _close(BuildContext ctx) {
      Navigator.of(ctx).pop();
    }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
          appBar:AppBar(title: Text('Action Sheet', style: TextStyle(fontSize: 30,),),
            centerTitle: true,
            backgroundColor: Colors.blue,
          ),
          body: Center(
            child: CupertinoButton(
              child: Text('This is Action Sheet',),
              color: Colors.black,
              onPressed: () => _show(context),
            ),
          )
      );
    }
  }

