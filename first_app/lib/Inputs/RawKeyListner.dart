import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RawKeyList extends StatefulWidget {

  @override
  _RawKeyListState createState() => _RawKeyListState();
}

class _RawKeyListState extends State<RawKeyList> {

  TextEditingController _controller = new TextEditingController();
  FocusNode _textNode = new FocusNode();

  @override
  initState() {
    super.initState();
  }

  void _handleSubmitted(String finalinput) {
    setState(() {
      SystemChannels.textInput
          .invokeMethod('TextInput.hide'); //hide keyboard again
      _controller.clear();
    });
  }

  handleKey(RawKeyEventDataAndroid key) {
    String _keyCode;
    _keyCode = key.keyCode.toString(); //keycode of key event (66 is return)

    print("why does this run twice $_keyCode");
  }

  _buildTextComposer() {
    TextField _textField = new TextField(
      controller: _controller,
      onSubmitted: _handleSubmitted,
    );
    FocusScope.of(context).requestFocus(_textNode);
    return  RawKeyboardListener(
        focusNode: _textNode,
        child: _textField);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Raw Keyboard Listener', style: TextStyle(fontSize: 30,),),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: _buildTextComposer()
    );
  }
}
