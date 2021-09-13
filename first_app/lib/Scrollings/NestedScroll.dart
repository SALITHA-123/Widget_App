import 'package:flutter/material.dart';

class NestScroll extends StatefulWidget {

  @override
  _NestScrollState createState() => _NestScrollState();
}

class _NestScrollState extends State<NestScroll> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Nested Scroll View', style: TextStyle(fontSize: 30,),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              title: Text('NestedScrollView'),
            )
          ];
        },
        body:
        ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 80,
              color: Colors.primaries[index % Colors.primaries.length],
              alignment: Alignment.center,
              child: Text(
                'Item : $index',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            );
          },
          itemCount: 20,
        ),
      ),
    );
  }
}
