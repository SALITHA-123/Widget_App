import 'package:flutter/material.dart';

class SimpleDia extends StatefulWidget {
  const SimpleDia({Key? key}) : super(key: key);

  @override
  _SimpleDiaState createState() => _SimpleDiaState();
}

class _SimpleDiaState extends State<SimpleDia> {
  var _selected ="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Simple Dialog', style: TextStyle(fontSize: 30,),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                _displayDialog(context);
              },
              child: Text("Show Dialog"),
            ),
            Text(_selected)
          ],
        ),
      ),
    );
  }

  _displayDialog(BuildContext context) async {
    _selected = await showDialog(
      context: context,
      builder: (BuildContext context) {
        return Expanded(
          child: SimpleDialog(
            title: Text('Items'),
            children:[
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, "Item One"); },
                child: const Text('Item One'),
              ),
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, "Item O2");
                },
                child: const Text('Item O2'),
              ),
            ],
            elevation: 10,
            //backgroundColor: Colors.green,
          ),
        );
      },
    );

    if(_selected != null)
    {
      setState(() {
        _selected = _selected;
      });
    }
  }
}
