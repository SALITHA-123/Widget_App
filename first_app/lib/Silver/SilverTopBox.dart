import 'package:flutter/material.dart';

class SilverTops extends StatefulWidget {
  const SilverTops({Key? key}) : super(key: key);

  @override
  _SilverTopsState createState() => _SilverTopsState();
}

class _SilverTopsState extends State<SilverTops> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Silver Top Box Adapter', style: TextStyle(fontSize: 30,),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
    body: CustomScrollView(
      slivers: <Widget>[
        SliverToBoxAdapter(
          child: SizedBox(
            height: 1000,
            child: Center(
              child: Text('Main content here'),
            ),
          ),
        ),
      ],
    )
    );
  }
}
