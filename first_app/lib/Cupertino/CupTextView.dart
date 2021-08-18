import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupTextView extends StatefulWidget {

  @override
  _CupTextViewState createState() => _CupTextViewState();
}

class _CupTextViewState extends State<CupTextView> {
  late TextEditingController _textController;

  @override
  void initState() {
    super.initState();
    _textController = TextEditingController(text: 'Type Here...');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Text('Action Sheet', style: TextStyle(fontSize: 30,),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: CupertinoTextField(controller: _textController),
    );
  }
}
