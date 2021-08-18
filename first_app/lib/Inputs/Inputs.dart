import 'package:first_app/Inputs/AutoComplete.dart';
import 'package:first_app/Inputs/FormField.dart';
import 'package:first_app/Inputs/Forms.dart';
import 'package:first_app/Inputs/RawKeyListner.dart';
import 'package:flutter/material.dart';

class Inputs extends StatefulWidget {

  @override
  _InputsState createState() => _InputsState();
}

class _InputsState extends State<Inputs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Inputs",
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
                          Navigator.push(context,MaterialPageRoute(builder: (context) => AutoCom()));
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
                            child: Text(' (01). AutoComplete',
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
                          Navigator.push(context, MaterialPageRoute(builder: (context) => FlutForm()));
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
                            child: Text(' (02). Forms',
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
                          Navigator.push(context, MaterialPageRoute(builder: (context) => FormFields()));
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
                            child: Text(' (03). FormField',
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
                           Navigator.push(context, MaterialPageRoute(builder: (context) => RawKeyList()));
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
                            child: Text(' (04). RawKeyboardListener',
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
