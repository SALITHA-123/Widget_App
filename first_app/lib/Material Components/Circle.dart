import 'package:flutter/material.dart';

class CirclePro extends StatefulWidget {
  const CirclePro({Key? key}) : super(key: key);

  @override
  _CircleProState createState() => _CircleProState();
}

class _CircleProState extends State<CirclePro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Circle Progress Indicator', style: TextStyle(fontSize: 30,),),
    centerTitle: true,
    backgroundColor: Colors.blue,
    ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
