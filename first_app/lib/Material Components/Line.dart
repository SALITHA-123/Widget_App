import 'package:flutter/material.dart';

class LinePro extends StatefulWidget {
  const LinePro({Key? key}) : super(key: key);

  @override
  _LineProState createState() => _LineProState();
}

class _LineProState extends State<LinePro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Line Progress Indicator', style: TextStyle(fontSize: 30,),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LinearProgressIndicator(),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}

