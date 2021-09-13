import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {
  const DropDown({Key? key}) : super(key: key);

  @override
  _DropDownState createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  int _value = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Drop Down', style: TextStyle(fontSize: 30,),),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Container(
          padding: EdgeInsets.all(20.0),
          child: DropdownButton(
              value: _value,
              items: [
                DropdownMenuItem(
                  child: Text("First Item"),
                  value: 1,
                ),
                DropdownMenuItem(
                  child: Text("Second Item"),
                  value: 2,
                ),
                DropdownMenuItem(
                    child: Text("Third Item"),
                    value: 3
                ),
                DropdownMenuItem(
                    child: Text("Fourth Item"),
                    value: 4
                )
              ],
              onChanged: (value) {
                setState(() {
                  _value = _value;
                });
              }),
        ));
  }
}
