import 'package:flutter/material.dart';

class AbsoPointer extends StatefulWidget {

  @override
  _AbsoPointerState createState() => _AbsoPointerState();
}

class _AbsoPointerState extends State<AbsoPointer> {

  bool _ignoring = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Absorb Pointer', style: TextStyle(fontSize: 30,),),
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
                IgnorePointer(
                  ignoring: _ignoring,
                  child: Column(
                    children: <Widget>[
                      RaisedButton(
                        child: Text('Press the button'),
                        onPressed: () {},
                      ),
                      TextField(),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Ignore Pointer '),
                    Switch(
                        value: _ignoring,
                        onChanged: (bool value) {
                          setState(() {
                            _ignoring = value;
                          });
                        }),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
