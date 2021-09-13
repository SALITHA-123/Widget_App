import 'package:flutter/material.dart';

class FloatButton extends StatefulWidget {
  const FloatButton({Key? key}) : super(key: key);

  @override
  _FloatButtonState createState() => _FloatButtonState();
}

class _FloatButtonState extends State<FloatButton> {
  int i = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      appBar: AppBar(title: Text('Floating Action Button', style: TextStyle(fontSize: 30,),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Floating action button pressed this many times"),
            Text("$i",textScaleFactor: 3,)
          ],),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        // isExtended: true,
        child: Icon(Icons.add),
        backgroundColor: Colors.green,
        onPressed: () {
          setState(() {
            i++;
          });
        },
      ),
    );
  }
}
