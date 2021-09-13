import 'package:flutter/material.dart';

class SilverAppBars extends StatefulWidget {
  const SilverAppBars({Key? key}) : super(key: key);

  @override
  _SilverAppBarsState createState() => _SilverAppBarsState();
}

class _SilverAppBarsState extends State<SilverAppBars> {
  final title = 'Silver App Bar';
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              snap: false,
              pinned: false,
              floating: false,
              flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text("$title",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      )
                  ),
                  
              ),
              expandedHeight: 230,
              backgroundColor: Colors.greenAccent[400],
              leading: IconButton(
                icon: Icon(Icons.menu),
                tooltip: 'Menu',
                onPressed: () {},
              ),
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.comment),
                  tooltip: 'Comment Icon',
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.settings),
                  tooltip: 'Setting Icon',
                  onPressed: () {},
                ),
              ],
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                    (context, index) => ListTile(
                  tileColor: (index % 2 == 0) ? Colors.white : Colors.green[50],
                  title: Center(
                    child: Text('$index',
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 50,
                            color: Colors.greenAccent[400]) //TextStyle
                    ),
                  ),
                ),
                childCount:5,
              ),
            )
          ],
        )
    );
  }
}
