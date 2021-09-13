import 'package:flutter/material.dart';

class TabView extends StatefulWidget {
  const TabView({Key? key}) : super(key: key);

  @override
  _TabViewState createState() => _TabViewState();
}

class _TabViewState extends State<TabView> {
  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
        length: 3,
        child: Scaffold(
                    appBar: AppBar(
                      title: Text('Tab Bar View', style: TextStyle(fontSize: 30,),),
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
                body:TabBarView(
                  children: <Widget>[
                  Container(
                      child:Center(
                        child:Text(
                      "Cake",
                        style: TextStyle(fontSize: 30),
                        ),
                      ),
                    ),
                  Container(
                        child:Center(
                          child:Text(
                          "Android",
                          style:TextStyle(fontSize: 30),
                      ),
                    ),
                  ),
                  Container(
                      child:Center(
                        child:Text(
                        "Mobile",
                         style: TextStyle(fontSize: 30),
                      ),
                   ),
                   ) ,
                  ],
                ),
        )
    );
  }
}
