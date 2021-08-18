import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupScroll extends StatefulWidget {

  @override
  _CupScrollState createState() => _CupScrollState();
}

class _CupScrollState extends State<CupScroll> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
             appBar:AppBar(title: Text('Cuperino ScrollView', style: TextStyle(fontSize: 30,),),
             centerTitle: true,
             backgroundColor: Colors.blue,
                         ),
                 body: Stack(children: [
                  Positioned(
                  top: 180,
                    left: 0,
                    right: 0,
                    bottom: 100,
                        child: Container(
                          color: Colors.orangeAccent,
                          child: CupertinoScrollbar(
                            child: SingleChildScrollView(
                              child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 500.0,
                                      child: Text(
                                        'This is Test demo',
                               style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ]),
                          ),
                        ),
                      ),
                    ),
                    ]
                 ),
    );
  }
}
