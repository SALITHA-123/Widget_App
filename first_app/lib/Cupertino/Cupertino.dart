import 'package:first_app/Cupertino/ActIndicator.dart';
import 'package:first_app/Cupertino/ActSheet.dart';
import 'package:first_app/Cupertino/AlertDialog.dart';
import 'package:first_app/Cupertino/ContMenu.dart';
import 'package:first_app/Cupertino/CupButton.dart';
import 'package:first_app/Cupertino/CupNavBar.dart';
import 'package:first_app/Cupertino/CupPicker.dart';
import 'package:first_app/Cupertino/CupPopup.dart';
import 'package:first_app/Cupertino/CupScaffold.dart';
import 'package:first_app/Cupertino/CupScroll.dart';
import 'package:first_app/Cupertino/CupSlider.dart';
import 'package:first_app/Cupertino/CupSwitch.dart';
import 'package:first_app/Cupertino/CupTabBar.dart';
import 'package:first_app/Cupertino/CupTabScaffold.dart';
import 'package:first_app/Cupertino/CupTextView.dart';
import 'package:first_app/Cupertino/CupTimerPicker.dart';
import 'package:first_app/Cupertino/CupTransition.dart';
import 'package:first_app/Cupertino/DatePicker.dart';
import 'package:first_app/Cupertino/DialogAction.dart';
import 'package:first_app/Cupertino/FullScreen.dart';
import 'package:first_app/Cupertino/SearchText.dart';
import 'package:first_app/Cupertino/SegControl.dart';
import 'package:first_app/Cupertino/SilverNavBar.dart';
import 'package:flutter/material.dart';

class Cupertino extends StatefulWidget {

  @override
  _CupertinoState createState() => _CupertinoState();
}

class _CupertinoState extends State<Cupertino> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Cupertino",
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
                          Navigator.push(context,MaterialPageRoute(builder: (context) => ActSheet()));
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
                            child: Text(' (01). ActionSheet',
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
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ActIndicator()));
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
                            child: Text(' (02). ActivityIndicator',
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
                          Navigator.push(context, MaterialPageRoute(builder: (context) => AleDialog()));
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
                            child: Text(' (03). AlertDialog',
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
                          Navigator.push(context, MaterialPageRoute(builder: (context) => CupButton()));
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
                            child: Text(' (04). Button',
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
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ContMenu()));
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
                            child: Text(' (05). ContextMenu',
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
                          Navigator.push(context, MaterialPageRoute(builder: (context) => DatePick()));
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
                            child: Text(' (06). DatePicker',
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
                          Navigator.push(context, MaterialPageRoute(builder: (context) => DiaAction()));
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
                            child: Text(' (07). DialogAction',
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
                          Navigator.push(context, MaterialPageRoute(builder: (context) => FullScreen()));
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
                            child: Text(' (08). DialogTransition',
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
                          Navigator.push(context, MaterialPageRoute(builder: (context) => CupNavBar()));
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
                            child: Text(' (09). NavigationBar',
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
                          Navigator.push(context, MaterialPageRoute(builder: (context) => CupScaff()));
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
                            child: Text(' (10). PageScaffold',
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

                //Row11
                Row(
                  children: [
                    Expanded(flex: 1,
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => CupTrans()));
                        },
                        child: Container(
                            margin: EdgeInsets.all(12),
                            alignment: Alignment(-1,0),
                            height: 60,
                            width: 200,
                            decoration: BoxDecoration(
                                color: Colors.blueAccent,
                                borderRadius: BorderRadius.all(
                                    Radius.circular(10)
                                )
                            ),
                            child: Text(' (11). PageTransition',
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

                //Row12
                Row(
                  children: [
                    Expanded(flex: 1,
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => CupPick()));
                        },
                        child: Container(
                            margin: EdgeInsets.all(12),
                            alignment: Alignment(-1,0),
                            height: 60,
                            width: 200,
                            decoration: BoxDecoration(
                                color: Colors.orangeAccent,
                                borderRadius: BorderRadius.all(
                                    Radius.circular(10)
                                )
                            ),
                            child: Text(' (12). Picker',
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


                //Row 13
                Row(
                  children: [
                    Expanded(flex: 1,
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => CupPop()));
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
                            child: Text(' (13). PopupSurface',
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

                //Row14
                Row(
                  children: [
                    Expanded(flex: 1,
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => CupScroll()));
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
                            child: Text(' (14). Scrollbar',
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

                //Row15
                Row(
                  children: [
                    Expanded(flex: 1,
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SearText()));
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
                            child: Text(' (15). SearchTextField',
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


                //Row16
                Row(
                  children: [
                    Expanded(flex: 1,
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SegControl()));
                        },
                        child: Container(
                            margin: EdgeInsets.all(12),
                            alignment: Alignment(-1,0),
                            height: 60,
                            width: 100,
                            decoration: BoxDecoration(
                                color: Colors.redAccent,
                                borderRadius: BorderRadius.all(
                                    Radius.circular(10)
                                )
                            ),
                            child: Text(' (16). SegmentedControl',
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

                //Row17
                Row(
                  children: [
                    Expanded(flex: 1,
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => CupSlid()));
                        },
                        child: Container(
                            margin: EdgeInsets.all(12),
                            alignment: Alignment(-1,0),
                            height: 60,
                            width: 200,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.all(
                                    Radius.circular(10)
                                )
                            ),
                            child: Text(' (17). Slider',
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

                //Row18
                Row(
                  children: [
                    Expanded(flex: 1,
                      child: GestureDetector(
                        onTap: (){
                         // Navigator.push(context, MaterialPageRoute(builder: (context) => Animations()));
                        },
                        child: Container(
                            margin: EdgeInsets.all(12),
                            alignment: Alignment(-1,0),
                            height: 60,
                            width: 200,
                            decoration: BoxDecoration(
                                color: Colors.greenAccent,
                                borderRadius: BorderRadius.all(
                                    Radius.circular(10)
                                )
                            ),
                            child: Text(' (18). SlidingSegment',
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


                //Row19
                Row(
                  children: [
                    Expanded(flex: 1,
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SilNavBar()));
                        },
                        child: Container(
                            margin: EdgeInsets.all(12),
                            alignment: Alignment(-1,0),
                            height: 60,
                            width: 100,
                            decoration: BoxDecoration(
                                color: Colors.orange,
                                borderRadius: BorderRadius.all(
                                    Radius.circular(10)
                                )
                            ),
                            child: Text(' (19). SilverNavigation',
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

                //Row20
                Row(
                  children: [
                    Expanded(flex: 1,
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => CupSwitch()));
                        },
                        child: Container(
                            margin: EdgeInsets.all(12),
                            alignment: Alignment(-1,0),
                            height: 60,
                            width: 200,
                            decoration: BoxDecoration(
                                color: Colors.pink,
                                borderRadius: BorderRadius.all(
                                    Radius.circular(10)
                                )
                            ),
                            child: Text(' (20). Switch',
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

                //Row21
                Row(
                  children: [
                    Expanded(flex: 1,
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => CupTabBar()));
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
                            child: Text(' (21). TabBar',
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

                //Row22
                Row(
                  children: [
                    Expanded(flex: 1,
                      child: GestureDetector(
                        onTap: (){
                           Navigator.push(context, MaterialPageRoute(builder: (context) => CupTabScaff()));
                        },
                        child: Container(
                            margin: EdgeInsets.all(12),
                            alignment: Alignment(-1,0),
                            height: 60,
                            width: 200,
                            decoration: BoxDecoration(
                                color: Colors.greenAccent,
                                borderRadius: BorderRadius.all(
                                    Radius.circular(10)
                                )
                            ),
                            child: Text(' (22). TabScaffold',
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


                //Row23
                Row(
                  children: [
                    Expanded(flex: 1,
                      child: GestureDetector(
                        onTap: (){
                          //   Navigator.push(context, MaterialPageRoute(builder: (context) => Animations()));
                        },
                        child: Container(
                            margin: EdgeInsets.all(12),
                            alignment: Alignment(-1,0),
                            height: 60,
                            width: 100,
                            decoration: BoxDecoration(
                                color: Colors.orange,
                                borderRadius: BorderRadius.all(
                                    Radius.circular(10)
                                )
                            ),
                            child: Text(' (23). TabView',
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

                //Row24
                Row(
                  children: [
                    Expanded(flex: 1,
                      child: GestureDetector(
                        onTap: (){
                           Navigator.push(context, MaterialPageRoute(builder: (context) => CupTextView()));
                        },
                        child: Container(
                            margin: EdgeInsets.all(12),
                            alignment: Alignment(-1,0),
                            height: 60,
                            width: 200,
                            decoration: BoxDecoration(
                                color: Colors.pink,
                                borderRadius: BorderRadius.all(
                                    Radius.circular(10)
                                )
                            ),
                            child: Text(' (24). TextField',
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

                //Row25
                Row(
                  children: [
                    Expanded(flex: 1,
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => CupTimerPick()));
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
                            child: Text(' (25). TimerPicker',
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
