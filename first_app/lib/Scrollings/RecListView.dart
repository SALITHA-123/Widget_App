import 'package:flutter/material.dart';

class RecList extends StatefulWidget {

  @override
  _RecListState createState() => _RecListState();
}

class _RecListState extends State<RecList> {
  @override
  Widget build(BuildContext context) {

    List<String> _todos = ['Task A', 'Task B', 'Task C', 'Task D'];
    return Scaffold(
      appBar: AppBar(title: Text('Recordable ListView', style: TextStyle(fontSize: 30,),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: ReorderableListView(
          children: _todos
              .map((task) => Container(
            key: ValueKey(task),
            decoration: BoxDecoration(
                color: Colors.greenAccent,
                border: Border.all(width: 1, color: Colors.green)),
            child: ListTile(
              contentPadding: EdgeInsets.all(25),
              leading: Icon(Icons.lock_clock),
              title: Text(
                task,
                style: TextStyle(fontSize: 24),
              ),
              trailing: Icon(Icons.drag_handle_outlined),
            ),
          ))
              .toList(),
          // The reorder function
          onReorder: (oldIndex, newIndex) {
            setState(() {
              if (newIndex > oldIndex) {
                newIndex -= 1;
              }
              final element = _todos.removeAt(oldIndex);
              _todos.insert(newIndex, element);
            });
          }),
    );
  }
}
