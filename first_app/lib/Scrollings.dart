import 'package:flutter/material.dart';

class Scrollings extends StatefulWidget {


  @override
  _ScrollingsState createState() => _ScrollingsState();
}

class _ScrollingsState extends State<Scrollings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Scrolling Widgets",
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
                          //Navigator.push(context,MaterialPageRoute(builder: (context) => Cupertino()));
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
                            child: Text(' (01). CustomScrollView',
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
                          //Navigator.push(context, MaterialPageRoute(builder: (context) => AniBuilder()

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
                            child: Text(' (02). DraggableScrollableSheet',
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
                          // Navigator.push(context, MaterialPageRoute(builder: (context) => AniContainer()

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
                            child: Text(' (03). GridView',
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
                          // Navigator.push(context, MaterialPageRoute(builder: (context) => Animations()

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
                            child: Text(' (04). ListView',
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
                          //Navigator.push(context, MaterialPageRoute(builder: (context) => Animations()

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
                            child: Text(' (05). NestedScrollView',
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
                          //  Navigator.push(context, MaterialPageRoute(builder: (context) => Animations()

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
                            child: Text(' (06). NotificationListener',
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
                          // Navigator.push(context, MaterialPageRoute(builder: (context) => Animations()

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
                            child: Text(' (07). PageView',
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
                          //  Navigator.push(context, MaterialPageRoute(builder: (context) => Animations()));

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
                            child: Text(' (08). RefreshIndicator',
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
                          // Navigator.push(context, MaterialPageRoute(builder: (context) => Animations()
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
                            child: Text(' (09). ReorderableListView',
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
                          // Navigator.push(context, MaterialPageRoute(builder: (context) => Animations()));
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
                            child: Text(' (10). ScrollConfiguration',
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
                          //  Navigator.push(context, MaterialPageRoute(builder: (context) => Animations()));

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
                            child: Text(' (11). Scrollable',
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
                          // Navigator.push(context, MaterialPageRoute(builder: (context) => Animations()
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
                            child: Text(' (12). Scrollbar',
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
                          // Navigator.push(context, MaterialPageRoute(builder: (context) => Animations()));
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
                            child: Text(' (13). SingleChildScrollView',
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
