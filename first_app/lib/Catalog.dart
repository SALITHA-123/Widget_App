import 'package:first_app/Accessibility/Accessibility.dart';
import 'package:first_app/AnimationWidgets/Animations.dart';
import 'package:first_app/Assets/Assets.dart';
import 'package:first_app/Asyncs/Asyncs.dart';
import 'package:first_app/Basics/Basics.dart';
import 'package:first_app/Cupertino/Cupertino.dart';
import 'package:first_app/Inputs/Inputs.dart';
import 'package:first_app/InterModels/InterModels.dart';
import 'package:first_app/Layouts/Layouts.dart';
import 'package:first_app/Material%20Components/MaterialComponents.dart';
import 'package:first_app/Paintings/Paintings.dart';
import 'package:first_app/Scrollings/Scrollings.dart';
import 'package:first_app/Stylings/Stylings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'TextWidget/Text.dart';

class Catalog extends StatefulWidget{
  @override
  CatState createState() => CatState();

}

class CatState extends State<Catalog>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Widget Catalog', style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Colors.blue,
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
                      Navigator.push(context, MaterialPageRoute(builder: (context) => TextWidget()));
                    },
                    child: Container(
                      margin: EdgeInsets.all(12),
                        alignment: Alignment(0,0),
                      height: 80,
                      width: 200,
                        decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.all(
                                Radius.circular(10)
                            )
                        ),
                      child: Text('Text',
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
                  ),
                  Expanded(flex: 1,
                    child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Accessibility()));
                        },
                      child: Container(
                        margin: EdgeInsets.all(12),
                          alignment: Alignment(0,0),
                        height: 80,
                        width: 200,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.all(
                                  Radius.circular(10)
                              )
                          ),
                          child: Text('Accessibility',
                              textAlign: TextAlign.center,
                              style: new TextStyle(
                                fontSize: 25.0,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.bold,
                                color: Colors.grey.shade800,
                              )
                            )
                          )
                        )
                      )
                   ]
                  ),

              //Row02
              Row(
                children: [
                  Expanded(flex: 1,
                    child: GestureDetector(
                      onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)  => Animations()));
                      },
                      child: Container(
                        margin: EdgeInsets.all(12),
                          alignment: Alignment(0,0),
                        height: 80,
                        width: 200,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.all(
                                  Radius.circular(10)
                              )
                          ),
                          child: Text('Animation and motion',
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
                  ),
                  Expanded(flex: 1,
                    child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)  => Assets()));
                        },
                      child: Container(
                        margin: EdgeInsets.all(12),
                          alignment: Alignment(0,0),
                        height: 80,
                        width: 200,
                          decoration: BoxDecoration(
                              color: Colors.pink,
                              borderRadius: BorderRadius.all(
                                  Radius.circular(10)
                              )
                          ),
                          child: Text('Assets, images, icons',
                              textAlign: TextAlign.center,
                              style: new TextStyle(
                                fontSize: 25.0,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.bold,
                                color: Colors.grey.shade800,
                              )
                          )
                      )
                    )
                  )
                ],
              ),

              //Row03
              Row(
                children: [
                  Expanded(flex: 1,
                    child: GestureDetector(
                      onTap: (){
                           Navigator.push(context, MaterialPageRoute(builder: (context) => Asyncs()));
                      },
                      child: Container(
                        margin: EdgeInsets.all(12),
                          alignment: Alignment(0,0),
                        height: 80,
                        width: 200,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.all(
                                  Radius.circular(10)
                              )
                          ),
                          child: Text('Async',
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
                  ),
                  Expanded(flex: 1,
                      child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Basics()));
                      },
                      child: Container(
                        margin: EdgeInsets.all(12),
                          alignment: Alignment(0,0),
                        height: 80,
                        width: 200,
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.all(
                                  Radius.circular(10)
                              )
                          ),
                          child: Text('Basic',
                              textAlign: TextAlign.center,
                              style: new TextStyle(
                                fontSize: 25.0,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.bold,
                                color: Colors.grey.shade800,
                              )
                          )
                      )
                    )
                  )
                ],
              ),

              //Row04
              Row(
                children: [
                  Expanded(flex: 1,
                    child: GestureDetector(
                      onTap: (){
                           Navigator.push(context, MaterialPageRoute(builder: (context) => Cupertino()));
                      },
                      child: Container(
                        margin: EdgeInsets.all(12),
                          alignment: Alignment(0,0),
                        height: 80,
                        width: 200,
                          decoration: BoxDecoration(
                              color: Colors.pinkAccent,
                              borderRadius: BorderRadius.all(
                                  Radius.circular(10)
                              )
                          ),
                          child: Text('Cupertino',
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
                  ),
                  Expanded(flex: 1,
                    child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Inputs()));
                        },
                      child: Container(
                        margin: EdgeInsets.all(12),
                          alignment: Alignment(0,0),
                        height: 80,
                        width: 200,
                          decoration: BoxDecoration(
                              color: Colors.greenAccent,
                              borderRadius: BorderRadius.all(
                                  Radius.circular(10)
                              )
                          ),
                          child: Text('Input',
                              textAlign: TextAlign.center,
                              style: new TextStyle(
                                fontSize: 25.0,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.bold,
                                color: Colors.grey.shade800,
                              )
                          )
                      )
                    )
                  )
                ],
              ),

              //Row05
              Row(
                children: [
                  Expanded(flex: 1,
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => InterModels()));
                      },
                      child: Container(
                        margin: EdgeInsets.all(12),
                          alignment: Alignment(0,0),
                        height: 80,
                        width: 200,
                          decoration: BoxDecoration(
                              color: Colors.purple,
                              borderRadius: BorderRadius.all(
                                  Radius.circular(10)
                              )
                          ),
                          child: Text('Interaction model widgets',
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
                  ),
                  Expanded(flex: 1,
                    child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => LayOuts()));
                        },
                      child: Container(
                        margin: EdgeInsets.all(12),
                          alignment: Alignment(0,0),
                        height: 80,
                        width: 200,
                          decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.all(
                                  Radius.circular(10)
                              )
                          ),
                          child: Text('Layout',
                              textAlign: TextAlign.center,
                              style: new TextStyle(
                                fontSize: 25.0,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.bold,
                                color: Colors.grey.shade800,
                              )
                          )
                      )
                     )
                  )
                ],
              ),

              //Row06
              Row(
                children: [
                  Expanded(flex: 1,
                    child: GestureDetector(
                      onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => MatCompo()));
                      },
                      child: Container(
                        margin: EdgeInsets.all(12),
                          alignment: Alignment(0,0),
                        height:80,
                        width: 200,
                          decoration: BoxDecoration(
                              color: Colors.pink,
                              borderRadius: BorderRadius.all(
                                  Radius.circular(10)
                              )
                          ),
                          child: Text('Material Components',
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
                  ),
                  Expanded(flex: 1,
                    child: GestureDetector(
                        onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Paintings()));
                        },
                      child: Container(
                        margin: EdgeInsets.all(12),
                          alignment: Alignment(0,0),
                        height: 80,
                        width: 200, decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.all(
                              Radius.circular(10)
                          )
                      ),
                          child: Text('Painting and effect',
                              textAlign: TextAlign.center,
                              style: new TextStyle(
                                fontSize: 25.0,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.bold,
                                color: Colors.grey.shade800,
                              )
                          )
                      )
                  )
                  )
                ],
              ),


              //Row07
              Row(
                children: [
                  Expanded(flex: 1,
                    child: GestureDetector(
                      onTap: (){
                           Navigator.push(context, MaterialPageRoute(builder: (context) => Scrollings()));
                      },
                      child: Container(
                        margin: EdgeInsets.all(12),
                          alignment: Alignment(0,0),
                        height: 80,
                        width: 200,
                          decoration: BoxDecoration(
                              color: Colors.deepOrangeAccent,
                              borderRadius: BorderRadius.all(
                                  Radius.circular(10)
                              )
                          ),
                          child: Text('Scrolling',
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
                  ),
                  Expanded(flex: 1,
                    child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Stylings()));
                        },
                      child: Container(
                        margin: EdgeInsets.all(12),
                          alignment: Alignment(0,0),
                        height: 80,
                        width: 200,
                          decoration: BoxDecoration(
                              color: Colors.brown,
                              borderRadius: BorderRadius.all(
                                  Radius.circular(10)
                              )
                          ),
                          child: Text('Styling',
                              textAlign: TextAlign.center,
                              style: new TextStyle(
                                fontSize: 25.0,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.bold,
                                color: Colors.grey.shade800,
                              )
                          )
                      )
                    )
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}