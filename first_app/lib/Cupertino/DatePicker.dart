import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DatePick extends StatefulWidget {

  @override
  _DatePickState createState() => _DatePickState();
}

class _DatePickState extends State<DatePick> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Date Picker', style: TextStyle(fontSize: 30,),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Container(
        height: 300,
        child: CupertinoDatePicker(
            mode: CupertinoDatePickerMode.dateAndTime,
            onDateTimeChanged: (dateTime) {
            }
        ),
      ),
    );
  }
}
