import 'package:flutter/material.dart';

class DividerWid extends StatefulWidget {
  const DividerWid({Key? key}) : super(key: key);

  @override
  _DividerWidState createState() => _DividerWidState();
}

class _DividerWidState extends State<DividerWid> {
  final items = ['One', 'Two', 'Three', 'Four', 'Five'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Divider', style: TextStyle(fontSize: 30,),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Column(
            children: <Widget>[
              ListTile(
                title: Text(items[index],style: TextStyle(fontSize: 20),),
              ),
              Divider(
                thickness: 5,
                color: Colors.black,
              ), //                           <-- Divider
            ],
          );
        },
      ),
    );
  }
}
