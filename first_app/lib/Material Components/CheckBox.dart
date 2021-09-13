import 'package:flutter/material.dart';

class Check extends StatefulWidget {
  const Check({Key? key}) : super(key: key);

  @override
  _CheckState createState() => _CheckState();
}

class _CheckState extends State<Check> {
  bool _isChecked = true;
  String _currText = '';

  List<String> text = ["Sinhala", "English", "Tamil"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Check Box', style: TextStyle(fontSize: 30,),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
              child: Container(
                height: 350.0,
                child: Column(
                  children: text
                      .map((t) => CheckboxListTile(
                    title: Text(t),
                    value: _isChecked,
                    onChanged: (val) {
                      setState(() {
                        _isChecked = val!;
                        if (val == true) {
                          _currText = t;
                        }
                      });
                    },
                  ))
                      .toList(),
                ),
              )),
        ],
      ),
    );
  }
}
