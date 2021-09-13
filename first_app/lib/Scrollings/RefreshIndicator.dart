import 'dart:math';

import 'package:flutter/material.dart';

class ReFresh extends StatefulWidget {


  @override
  _ReFreshState createState() => _ReFreshState();
}

class _ReFreshState extends State<ReFresh> {

  var refreshkey = GlobalKey<RefreshIndicatorState>();
  var list;
  var random;

  @override
  void initState() {
    super.initState();
    random = Random();
    list = List.generate(
      random.nextInt(10),
          (i) => " Item $i",
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Refresh Indicator', style: TextStyle(fontSize: 30,),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: <Widget>[
          Expanded(

            child: RefreshIndicator(
              key: refreshkey,
              child: ListView.builder(
                itemCount: list?.length,
                itemBuilder: (context, i) =>
                    SizedBox(
                      height: 80.0,
                      child: Card(
                        color: Colors.orange,
                        child: Center(
                            child: Text(
                              list[i],
                              style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            )),
                      ),
                    ),
              ),
              onRefresh: refreshlist,
            ),
          ),
          Text(
            "Swipe Down to Refresh List",
            style: TextStyle(fontSize: 25.0),
          ),
          SizedBox(
            height: 25.0,
          )
        ],
      ),
    );
  }

  Future<Null> refreshlist() async {
    refreshkey.currentState?.show(
      atTop: false,
    );
    await Future.delayed(
      Duration(seconds: 2),
    );
    setState(() {
      list = List.generate(
        random.nextInt(10),
            (i) => " Item $i",
      );
    });
  }
}
