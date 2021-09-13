import 'package:flutter/material.dart';

class BottSheet extends StatefulWidget {
  const BottSheet({Key? key}) : super(key: key);

  @override
  _BottSheetState createState() => _BottSheetState();
}

class _BottSheetState extends State<BottSheet> {
  bool _showBottomSheet = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Botton Sheet', style: TextStyle(fontSize: 30,),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Container(),
      bottomSheet: _showBottomSheet
          ? BottomSheet(
          elevation: 10,
          backgroundColor: Colors.amber,
          onClosing: () {
            // Do something
          },
          builder: (BuildContext ctx) => Container(
            width: double.infinity,
            height: 250,
            alignment: Alignment.center,
            child: ElevatedButton(
              child: Text(
                'Close this bottom sheet',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                setState(() {
                  _showBottomSheet = false;
                });
              },
            ),
          )
      )
          : null,
    );
  }
}
