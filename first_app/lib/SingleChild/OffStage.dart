import 'package:flutter/material.dart';

class OffSta extends StatefulWidget {

  @override
  _OffStaState createState() => _OffStaState();
}

class _OffStaState extends State<OffSta> {
  bool _visibility = false;
  bool _changeVisibility= false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Off Stage', style: TextStyle(fontSize: 30,),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          new Container(
            child: Offstage(
              child: new FlutterLogo(size: 200.0),
              offstage: _visibility,
            ),
          ),
          new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Container(
                margin: new EdgeInsets.only(top: 16.0),
                child: new Column(
                  children: <Widget>[
                    new FlatButton(
                      onPressed: () {
                        _changeVisibility;
                      },
                      child: Text("Visible"),
                    ),
                  ],
                ),
              ),
              new Container(
                margin: new EdgeInsets.only(top: 16.0),
                child: new Column(
                  children: <Widget>[
                    new FlatButton(
                      onPressed: () {
                        _changeVisibility;
                      },
                      child: Text("Hide"),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
