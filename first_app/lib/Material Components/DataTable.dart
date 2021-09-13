import 'package:flutter/material.dart';

class DataTab extends StatefulWidget {
  const DataTab({Key? key}) : super(key: key);

  @override
  _DataTabState createState() => _DataTabState();
}

class _DataTabState extends State<DataTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Data Table', style: TextStyle(fontSize: 30,),),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: ListView(children: <Widget>[
          Center(
              child: Text(
                'Student Records',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),
          DataTable(
            columns: [
              DataColumn(label: Text('Id')),
              DataColumn(label: Text('Name')),
              DataColumn(label: Text('Grade')),
            ],
            rows: [
              DataRow(cells: [
                DataCell(Text('1')),
                DataCell(Text('Kusal')),
                DataCell(Text('6')),
              ]),
              DataRow(cells: [
                DataCell(Text('2')),
                DataCell(Text('Bhanuka')),
                DataCell(Text('9')),
              ]),
              DataRow(cells: [
                DataCell(Text('3')),
                DataCell(Text('Dinesh')),
                DataCell(Text('8')),
              ]),
            ],
          ),
        ]
        )
    );

  }
}
