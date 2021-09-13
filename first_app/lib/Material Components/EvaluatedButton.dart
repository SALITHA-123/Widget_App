import 'package:flutter/material.dart';

class EvaluButton extends StatefulWidget {
  const EvaluButton({Key? key}) : super(key: key);

  @override
  _EvaluButtonState createState() => _EvaluButtonState();
}

class _EvaluButtonState extends State<EvaluButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Evaluated Button', style: TextStyle(fontSize: 30,),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Click Me'),
          style: ElevatedButton.styleFrom(
            primary: Colors.teal,
            onPrimary: Colors.white,
            shape: const BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
