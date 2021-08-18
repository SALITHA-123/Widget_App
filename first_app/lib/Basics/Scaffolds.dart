import 'package:flutter/material.dart';

class FluttScaff extends StatefulWidget {

  @override
  _FluttScaffState createState() => _FluttScaffState();
}

class _FluttScaffState extends State<FluttScaff> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Scaffold', style: TextStyle(fontSize: 30,),),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body:  Center(
            child: Text("This is Scaffold..",
            style: TextStyle(
            color: Colors.black,
            fontSize: 40.0,
            ),
          ),
        ),
          floatingActionButton: FloatingActionButton(
              elevation: 10.0,
            child: Icon(Icons.add),
             onPressed: () {}
        )
     );
  }
}
