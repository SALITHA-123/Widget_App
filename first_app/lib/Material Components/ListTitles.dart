import 'package:flutter/material.dart';

class ListTitles extends StatefulWidget {
  const ListTitles({Key? key}) : super(key: key);

  @override
  _ListTitlesState createState() => _ListTitlesState();
}

class _ListTitlesState extends State<ListTitles> {
  final List<Map<String, dynamic>> _items = List.generate(
      10,
          (index) =>
      {"id": index, "title": "Item $index", "subtitle": "Subtitle $index"});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('ListTile', style: TextStyle(fontSize: 30,),),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: ListView(
            children: ListTile.divideTiles(
                color: Colors.deepPurple,
                tiles: _items.map((item) => ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.amber,
                    child: Text(item['id'].toString()),
                  ),
                  title: Text(item['title']),
                  subtitle: Text(item['subtitle']),
                  trailing: IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {},
                  ),
                ))).toList()
        )
    );
  }
}
