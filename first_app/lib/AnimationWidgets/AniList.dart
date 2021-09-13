import 'dart:math';

import 'package:flutter/material.dart';

class Item {
  Item({required this.name});
  String name;
}

class AniList extends StatefulWidget {

  @override
  _AniListState createState() => _AniListState();
}
class _AniListState extends State<AniList> {

  List<Item> items = new List.empty(growable: true);
  final GlobalKey<AnimatedListState> listKey = GlobalKey<AnimatedListState>();
  var rng = new Random();

  _addItem() {
  setState(() {
  listKey.currentState!.insertItem(items.length, duration: const Duration(seconds: 1));
  int id = rng.nextInt(5000);
  items.add(new Item(name: "New Item $id"));
  });
  }
  _removeItem() {
  setState(() {
  int id = rng.nextInt(items.length);
  listKey.currentState!.removeItem(
  id,(context, animation) => buildItem(context, 0, animation),
  duration: const Duration(milliseconds: 250),
  );
  items.removeAt(id);
  });
  }

  Widget buildItem(
  BuildContext context, int index, Animation<double> animation) {
  return SizeTransition(
  key: ValueKey<int>(index),
  axis: Axis.vertical,
  sizeFactor: animation,
  child: SizedBox(
  child: ListTile(
  title: Text('${items[index].name}'),
  ),
  ),
  );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Animated ListState', style: TextStyle(fontSize: 30,),),
        centerTitle: true,
        backgroundColor: Colors.blue,
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: _addItem,
            ),
            IconButton(
              icon: const Icon(Icons.remove),
              onPressed: _removeItem,
            )
          ],
        ),
        body: Directionality(
            textDirection: TextDirection.ltr,
            child: AnimatedList(
              key: listKey,
              initialItemCount: items.length,
              itemBuilder: (context, index, animation) {
                return buildItem(context, index, animation);
              },
            )
        )
    );
  }
}
