import 'package:flutter/material.dart';
class Columns extends StatefulWidget {

  @override
  _ColumnsState createState() => _ColumnsState();
}

class _ColumnsState extends State<Columns> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Columns', style: TextStyle(fontSize: 30,),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child:Column (
              children: [

                Row(
                  children: [
                    Expanded(flex: 1,
                        child: Container(
                            margin: EdgeInsets.all(12),
                            alignment: Alignment(0,0),
                            height: 150,
                            width: 200,
                            decoration: BoxDecoration(
                                color: Colors.yellowAccent,
                                borderRadius: BorderRadius.all(
                                    Radius.circular(10)
                                )
                            ),
                            child: Text('This is',
                                textAlign: TextAlign.center,
                                style: new TextStyle(
                                  fontSize: 25.0,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey.shade800,
                                )
                            )
                        ),
                      ),
                  ],
                ),

                Row(
                  children: [
                    Expanded(flex: 1,
                      child: Container(
                            margin: EdgeInsets.all(12),
                            alignment: Alignment(0,0),
                            height: 150,
                            width: 200,
                            decoration: BoxDecoration(
                                color: Colors.yellowAccent,
                                borderRadius: BorderRadius.all(
                                    Radius.circular(10)
                                )
                            ),
                            child: Text('Flutter Columns',
                                textAlign: TextAlign.center,
                                style: new TextStyle(
                                  fontSize: 25.0,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey.shade800,
                                )
                            )
                        ),
                      ),
                  ],
                ),
              ]
          ),
        ),
      ),
    );
  }
}
