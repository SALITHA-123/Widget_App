import 'package:flutter/material.dart';

class DateTime extends StatefulWidget {
  const DateTime({Key? key}) : super(key: key);

  @override
  _DateTimeState createState() => _DateTimeState();
}

class _DateTimeState extends State<DateTime> {
  String? _selectedTime;

  Future<void> _show() async {
    final TimeOfDay? result =
    await showTimePicker(context: context, initialTime: TimeOfDay.now());
    if (result != null) {
      setState(() {
        _selectedTime = result.format(context);
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Date & Time Picker', style: TextStyle(fontSize: 30,),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Text(
          _selectedTime != null ? _selectedTime! : 'No time selected!',
          style: TextStyle(fontSize: 30),
        ),
      ),
      floatingActionButton:
      ElevatedButton(onPressed: _show, child: Text('Show Time Picker')),
    );
  }
}
