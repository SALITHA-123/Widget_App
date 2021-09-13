import 'package:flutter/material.dart';

class SilLists extends StatefulWidget {
  const SilLists({Key? key}) : super(key: key);

  @override
  _SilListsState createState() => _SilListsState();
}

class _SilListsState extends State<SilLists> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Silver List', style: TextStyle(fontSize: 30,),),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                  return Card(
                    margin: EdgeInsets.all(15),
                    child: Container(
                      color: Colors.blue[100 * (index % 9 + 1)],
                      height: 80,
                      alignment: Alignment.center,
                      child: Text(
                        "Item $index",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                  );
                },
                childCount: 1000, // 1000 list items
              ),
            ),
          ],
        ));
  }
}
