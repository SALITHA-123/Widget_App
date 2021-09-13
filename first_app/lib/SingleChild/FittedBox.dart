import 'package:flutter/material.dart';

class FittedWig extends StatefulWidget {
  const FittedWig({Key? key}) : super(key: key);

  @override
  _FittedWigState createState() => _FittedWigState();
}

class _FittedWigState extends State<FittedWig> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Fitted Box', style: TextStyle(fontSize: 30,),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            Container(
              child: FittedBox(
                  child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRcS59oBMWt2VcV6mNxV3xRLY83kSgOsnKAWQ&usqp=CAU')
              ),
              width: 300,
              height: 300,
            ),
          ],
        ),
      ),
    );
  }
}
