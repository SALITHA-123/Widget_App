import 'package:first_app/TextWidget/DefaultText.dart';
import 'package:first_app/TextWidget/Text01.dart';
import 'package:flutter/material.dart';

import 'Richtext.dart';

class TextWidget extends StatefulWidget {
  @override
  _TextWidgetState createState() => _TextWidgetState();
}

class _TextWidgetState extends State<TextWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Text Widgets",
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
                Navigator.push(context, MaterialPageRoute(builder: (context) => Text01()
                  )
                );
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
                  child: Text(' (01). Text',
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
                        Navigator.push(context, MaterialPageRoute(builder: (context) => richText()
                        )
                        );
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
                          child: Text(' (02). RichText',
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
                        Navigator.push(context, MaterialPageRoute(builder: (context) => DefaultText()
                        )
                        );
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
                          child: Text(' (03). DefaultTextStyle',
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
