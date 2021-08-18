import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SilNavBar extends StatefulWidget {

  @override
  _SilNavBarState createState() => _SilNavBarState();
}

class _SilNavBarState extends State<SilNavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Text('Action Sheet', style: TextStyle(fontSize: 30,),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: CupertinoPageScaffold(
          child: CustomScrollView(
            slivers: [
              CupertinoSliverNavigationBar(
                leading: Material(
                    child: IconButton(
                      icon: Icon(Icons.home),
                      onPressed: () {},
                    )),
                middle: Text('Home'),
                trailing: Material(
                    child: IconButton(
                      icon: Icon(Icons.add),
                      onPressed: () {},
                    )),
                largeTitle: Text('Main Page'),
              ),


            ],
          ),
      ),
    );
  }
}
