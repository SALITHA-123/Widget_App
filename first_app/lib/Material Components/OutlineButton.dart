import 'package:flutter/material.dart';

class OutButton extends StatefulWidget {
  const OutButton({Key? key}) : super(key: key);

  @override
  _OutButtonState createState() => _OutButtonState();
}

class _OutButtonState extends State<OutButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('OutLined Button', style: TextStyle(fontSize: 30,),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: OutlinedButton(
          child: Text('Click Me'),
          onPressed: () {
            print('Pressed');
          },
        ),
      ),
    );
  }
}
