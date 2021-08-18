import 'package:flutter/material.dart';

class DefaultText extends StatefulWidget {

  @override
  _DefaultTextState createState() => _DefaultTextState();
}

class _DefaultTextState extends State<DefaultText> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("DefaultTextStyle",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: "Roboto",
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.grey.shade800,
          ),
        ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DefaultTextStyle(
              style: TextStyle(fontSize: 30, color: Colors.blue),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'First Text',
                    ),
                    const Text(
                      'Second Text',
                      style: TextStyle(fontSize: 25),
                    ),
                    const Text(
                      'Third Text',
                      style: TextStyle(color: Colors.red),
                    ),
                  ],
                ),
              ),
            ),
          ],
        )
    );
  }
}
