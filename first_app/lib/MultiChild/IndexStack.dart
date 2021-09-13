import 'package:flutter/material.dart';

class InStack extends StatefulWidget {
  const InStack({Key? key}) : super(key: key);

  @override
  _InStackState createState() => _InStackState();
}

class _InStackState extends State<InStack> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Index Stack', style: TextStyle(fontSize: 30,),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: IndexedStack(
          index: index,
          children: [
            // Index = 0
            Container(
              width: 400,
              height: 400,
              color: Colors.amber,
              alignment: Alignment.center,
              child: Text(
                '0',
                style: TextStyle(fontSize: 100),
              ),
            ),
            // Index = 1
            Container(
              width: 400,
              height: 400,
              color: Colors.purple,
              alignment: Alignment.center,
              child: Text('1', style: TextStyle(fontSize: 100)),
            ),
            // Index = 2
            Container(
              width: 400,
              height: 400,
              color: Colors.red,
              alignment: Alignment.center,
              child: Text('2', style: TextStyle(fontSize: 100)),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.refresh_rounded),
        onPressed: () {
          setState(() {
            if (index == 2) {
              index = 0;
            } else {
              index = index + 1;
            }
          });
        },
      ),
    );
  }
}
