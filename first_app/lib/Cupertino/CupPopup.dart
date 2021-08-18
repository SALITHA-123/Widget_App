import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupPop extends StatefulWidget {

  @override
  _CupPopState createState() => _CupPopState();
}

class _CupPopState extends State<CupPop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(title: Text('Popup Surface', style: TextStyle(fontSize: 30,),),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
      body: RaisedButton(
        textColor: Colors.black,
        child: Text("Click Here",style: TextStyle(fontSize: 25),),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (
                BuildContext context,
                ) =>
                CupertinoPopupSurface(
                  child: Center(
                    child: Container(
                      height: 150,
                      width: 300,
                      color: Colors.orange,
                      child: Center(
                        child: Text(
                          "Hello World",style: TextStyle(fontSize: 25,),
                        ),
                      ),
                    ),
                  ),
                ),
          );
        },
      ),
    );
  }
}
