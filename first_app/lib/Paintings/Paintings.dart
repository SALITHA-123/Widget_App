import 'package:first_app/Paintings/BackDrop.dart';
import 'package:first_app/Paintings/ClipOvals.dart';
import 'package:first_app/Paintings/ClipPaths.dart';
import 'package:first_app/Paintings/ClipRects.dart';
import 'package:first_app/Paintings/CustomPaints.dart';
import 'package:first_app/Paintings/DecoBox.dart';
import 'package:first_app/Paintings/FacTrans.dart';
import 'package:first_app/Paintings/Opasit.dart';
import 'package:first_app/Paintings/RotBox.dart';
import 'package:first_app/Paintings/Trans.dart';
import 'package:flutter/material.dart';

class Paintings extends StatefulWidget {

  @override
  _PaintingsState createState() => _PaintingsState();
}

class _PaintingsState extends State<Paintings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Paintings & Effects",
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
                          Navigator.push(context,MaterialPageRoute(builder: (context) => BackDrop()));
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
                            child: Text(' (01). BackdropFilter',
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
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ClipOvals()));
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
                            child: Text(' (02). ClipOval',
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
                           Navigator.push(context, MaterialPageRoute(builder: (context) => ClipPaths()));
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
                            child: Text(' (03). ClipPath',
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
                           Navigator.push(context, MaterialPageRoute(builder: (context) => ClipRects()));
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
                            child: Text(' (04). ClipRect',
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
                          Navigator.push(context, MaterialPageRoute(builder: (context) => CustomPaints()));
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
                            child: Text(' (05). CustomPaint',
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
                           Navigator.push(context, MaterialPageRoute(builder: (context) => DecoBox()));
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
                            child: Text(' (06). DecoratedBox',
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
                           Navigator.push(context, MaterialPageRoute(builder: (context) => FacTrans()));
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
                            child: Text(' (07). FractionalTranslation',
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
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Opacit()));
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
                            child: Text(' (08). Opacity',
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
                           Navigator.push(context, MaterialPageRoute(builder: (context) => RotBox()));
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
                            child: Text(' (09). RotatedBox',
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
                           Navigator.push(context, MaterialPageRoute(builder: (context) => Trans()));
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
                            child: Text(' (10). TransForm',
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
