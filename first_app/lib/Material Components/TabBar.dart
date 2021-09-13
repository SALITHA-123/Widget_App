import 'package:flutter/material.dart';

class TabBars extends StatefulWidget {
  const TabBars({Key? key}) : super(key: key);

  @override
  _TabBarsState createState() => _TabBarsState();
}

class _TabBarsState extends State<TabBars> {
  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
        length: 3,
        child: Scaffold(
        appBar: AppBar(
        title: Text('Tab Bar', style: TextStyle(fontSize: 30,),),
          centerTitle: true,
          backgroundColor: Colors.blue,
          bottom:TabBar(
           tabs: <Widget>[
               Tab(icon: Icon(Icons.cake)),
               Tab(icon: Icon(Icons.android)),
               Tab(icon: Icon(Icons.phone_android)),
            ],
             ),
           ),
        )
    );
  }
}

