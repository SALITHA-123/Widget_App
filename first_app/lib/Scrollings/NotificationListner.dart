import 'package:flutter/material.dart';

class NotiListner extends StatefulWidget {

  @override
  _NotiListnerState createState() => _NotiListnerState();
}

class _NotiListnerState extends State<NotiListner> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Notification Listener', style: TextStyle(fontSize: 30,),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: NotificationListener<ScrollNotification>(
        child: ListView.builder(
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
      return Text('Item $index');
      },
      ),
    ),
    );
  }
}
