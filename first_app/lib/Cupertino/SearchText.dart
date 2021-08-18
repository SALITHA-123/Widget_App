import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearText extends StatefulWidget {

  @override
  _SearTextState createState() => _SearTextState();
}

class _SearTextState extends State<SearText> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(title: Text('Search Text Field', style: TextStyle(fontSize: 30,),),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
            body: CupertinoSearchTextField(
                   onChanged: (String value) {
                    print('The text has changed to: $value');
               },
                 onSubmitted: (String value) {
                 print('Submitted text: $value');
                },
            )
    );
  }
}
