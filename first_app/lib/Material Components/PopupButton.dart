import 'package:flutter/material.dart';

class PopButton extends StatefulWidget {
  const PopButton({Key? key}) : super(key: key);

  @override
  _PopButtonState createState() => _PopButtonState();
}

class _PopButtonState extends State<PopButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('PopUp Menu Button', style: TextStyle(fontSize: 30,),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: PopupMenuButton<int>(
          itemBuilder: (context) => [
            PopupMenuItem(
              value: 1,
              child: Text(
                "Item 01",
                style: TextStyle(
                    color:Colors.red, fontWeight: FontWeight.w700),
              ),
            ),
            PopupMenuItem(
              value: 2,
              child: Text(
                "item 02",
                style: TextStyle(
                    color: Colors.red, fontWeight: FontWeight.w700),
              ),
            ),
          ],
          icon: Icon(Icons.library_add),
          offset: Offset(0, 100),
        ),
      ),
    );
  }
}
