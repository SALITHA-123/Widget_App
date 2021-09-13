import 'package:flutter/material.dart';

class Tools extends StatefulWidget {
  const Tools({Key? key}) : super(key: key);

  @override
  _ToolsState createState() => _ToolsState();
}

class _ToolsState extends State<Tools> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Tool Tip', style: TextStyle(fontSize: 30,),),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
            child: Column(children: <Widget>[
              Container(
                margin: EdgeInsets.all(10),
                child: Tooltip(
                    message: 'My Account',
                    child: FlatButton(
                      onPressed: () {  },
                      child: Icon(
                        Icons.account_box,
                        size: 50,
                      ),
                    )),
              ),
            ]
            )
        )
    );

  }
}
