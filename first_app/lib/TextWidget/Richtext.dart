import 'package:flutter/material.dart';

class richText extends StatefulWidget {
  @override
  _richTextState createState() => _richTextState();
}

class _richTextState extends State<richText> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(title: Text("Rich Text",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: "Roboto",
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.grey.shade800,
          ),
        ),
      centerTitle: true,
      backgroundColor: Colors.blue,
        ),
        body: SafeArea(
          child:RichText(
            text: TextSpan(
              text: 'My',
              style: DefaultTextStyle.of(context).style,
              children: const <TextSpan>[
                TextSpan(text: 'First', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'Application'),
              ],
            ),
          )
        )
    );
  }
}
