import 'package:first_app/InterModels/AbsoPointer.dart';
import 'package:first_app/InterModels/Dismissible.dart';
import 'package:first_app/InterModels/DragSheet.dart';
import 'package:first_app/InterModels/DragTarget.dart';
import 'package:first_app/InterModels/Draggable.dart';
import 'package:first_app/InterModels/GestureDetector.dart';
import 'package:first_app/InterModels/IgnorePointer.dart';
import 'package:first_app/InterModels/InterViewer.dart';
import 'package:first_app/InterModels/LongPressDraggable.dart';
import 'package:first_app/InterModels/Scrollable.dart';
import 'package:flutter/material.dart';

class InterModels extends StatefulWidget {

  @override
  _InterModelsState createState() => _InterModelsState();
}

class _InterModelsState extends State<InterModels> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Interaction Models",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: "Roboto",
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.grey.shade800,
        ),
      ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child:Column (
              children: [

                //Row 01
                Row(
                  children: [
                    Expanded(flex: 1,
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context,MaterialPageRoute(builder: (context) => AbsoPointer()));
                        },
                        child: Container(
                            margin: EdgeInsets.all(12),
                            alignment: Alignment(-1,0),
                            height: 60,
                            width: 100,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.all(
                                    Radius.circular(10)
                                )
                            ),
                            child: Text(' (01). AbsorbPointer',
                                textAlign: TextAlign.start,
                                style: new TextStyle(
                                  fontSize: 25.0,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey.shade800,
                                )
                            )
                        ),
                      ),
                    ),
                  ],
                ),

                //Row02
                Row(
                  children: [
                    Expanded(flex: 1,
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Dismiss()));
                        },
                        child: Container(
                            margin: EdgeInsets.all(12),
                            alignment: Alignment(-1,0),
                            height: 60,
                            width: 200,
                            decoration: BoxDecoration(
                                color: Colors.yellow,
                                borderRadius: BorderRadius.all(
                                    Radius.circular(10)
                                )
                            ),
                            child: Text(' (02). Dismissible',
                                textAlign: TextAlign.start,
                                style: new TextStyle(
                                  fontSize: 25.0,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey.shade800,
                                )
                            )
                        ),
                      ),
                    ),
                  ],
                ),

                //Row03
                Row(
                  children: [
                    Expanded(flex: 1,
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => DraTarget()));
                        },
                        child: Container(
                            margin: EdgeInsets.all(12),
                            alignment: Alignment(-1,0),
                            height: 60,
                            width: 200,
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.all(
                                    Radius.circular(10)
                                )
                            ),
                            child: Text(' (03). DragTarget',
                                textAlign: TextAlign.start,
                                style: new TextStyle(
                                  fontSize: 25.0,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey.shade800,
                                )
                            )
                        ),
                      ),
                    ),
                  ],
                ),


                //Row04
                Row(
                  children: [
                    Expanded(flex: 1,
                      child: GestureDetector(
                        onTap: (){
                           Navigator.push(context, MaterialPageRoute(builder: (context) => Drag()));
                        },
                        child: Container(
                            margin: EdgeInsets.all(12),
                            alignment: Alignment(-1,0),
                            height: 60,
                            width: 100,
                            decoration: BoxDecoration(
                                color: Colors.pink,
                                borderRadius: BorderRadius.all(
                                    Radius.circular(10)
                                )
                            ),
                            child: Text(' (04). Draggable',
                                textAlign: TextAlign.start,
                                style: new TextStyle(
                                  fontSize: 25.0,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey.shade800,
                                )
                            )
                        ),
                      ),
                    ),
                  ],
                ),

                //Row05
                Row(
                  children: [
                    Expanded(flex: 1,
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => DragSheet()));
                        },
                        child: Container(
                            margin: EdgeInsets.all(12),
                            alignment: Alignment(-1,0),
                            height: 60,
                            width: 200,
                            decoration: BoxDecoration(
                                color: Colors.purple,
                                borderRadius: BorderRadius.all(
                                    Radius.circular(10)
                                )
                            ),
                            child: Text(' (05). ScrollableSheet',
                                textAlign: TextAlign.start,
                                style: new TextStyle(
                                  fontSize: 25.0,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey.shade800,
                                )
                            )
                        ),
                      ),
                    ),
                  ],
                ),

                //Row06
                Row(
                  children: [
                    Expanded(flex: 1,
                      child: GestureDetector(
                        onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => GesDetector()));
                        },
                        child: Container(
                            margin: EdgeInsets.all(12),
                            alignment: Alignment(-1,0),
                            height: 60,
                            width: 200,
                            decoration: BoxDecoration(
                                color: Colors.orange,
                                borderRadius: BorderRadius.all(
                                    Radius.circular(10)
                                )
                            ),
                            child: Text(' (06). GestureDetector',
                                textAlign: TextAlign.start,
                                style: new TextStyle(
                                  fontSize: 25.0,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey.shade800,
                                )
                            )
                        ),
                      ),
                    ),
                  ],
                ),


                //Row07
                Row(
                  children: [
                    Expanded(flex: 1,
                      child: GestureDetector(
                        onTap: (){
                           Navigator.push(context, MaterialPageRoute(builder: (context) => IgnoPointer()));
                          },
                        child: Container(
                            margin: EdgeInsets.all(12),
                            alignment: Alignment(-1,0),
                            height: 60,
                            width: 100,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.all(
                                    Radius.circular(10)
                                )
                            ),
                            child: Text(' (07). IgnorePointer',
                                textAlign: TextAlign.start,
                                style: new TextStyle(
                                  fontSize: 25.0,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey.shade800,
                                )
                            )
                        ),
                      ),
                    ),
                  ],
                ),

                //Row08
                Row(
                  children: [
                    Expanded(flex: 1,
                      child: GestureDetector(
                        onTap: (){
                           Navigator.push(context, MaterialPageRoute(builder: (context) => InterViewer()));
                           },
                        child: Container(
                            margin: EdgeInsets.all(12),
                            alignment: Alignment(-1,0),
                            height: 60,
                            width: 200,
                            decoration: BoxDecoration(
                                color: Colors.yellow,
                                borderRadius: BorderRadius.all(
                                    Radius.circular(10)
                                )
                            ),
                            child: Text(' (08). InteractiveViewer',
                                textAlign: TextAlign.start,
                                style: new TextStyle(
                                  fontSize: 25.0,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey.shade800,
                                )
                            )
                        ),
                      ),
                    ),
                  ],
                ),

                //Row09
                Row(
                  children: [
                    Expanded(flex: 1,
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => LongDrag()));
                        },
                        child: Container(
                            margin: EdgeInsets.all(12),
                            alignment: Alignment(-1,0),
                            height: 60,
                            width: 200,
                            decoration: BoxDecoration(
                                color: Colors.pinkAccent,
                                borderRadius: BorderRadius.all(
                                    Radius.circular(10)
                                )
                            ),
                            child: Text(' (09). LongPressDraggable',
                                textAlign: TextAlign.start,
                                style: new TextStyle(
                                  fontSize: 25.0,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey.shade800,
                                )
                            )
                        ),
                      ),
                    ),
                  ],
                ),


                //Row10
                Row(
                  children: [
                    Expanded(flex: 1,
                      child: GestureDetector(
                        onTap: (){
                           Navigator.push(context, MaterialPageRoute(builder: (context) => Scroll()));
                        },
                        child: Container(
                            margin: EdgeInsets.all(12),
                            alignment: Alignment(-1,0),
                            height: 60,
                            width: 100,
                            decoration: BoxDecoration(
                                color: Colors.greenAccent,
                                borderRadius: BorderRadius.all(
                                    Radius.circular(10)
                                )
                            ),
                            child: Text(' (10). Scrollable',
                                textAlign: TextAlign.start,
                                style: new TextStyle(
                                  fontSize: 25.0,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey.shade800,
                                )
                            )
                        ),
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
