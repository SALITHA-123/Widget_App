import 'package:flutter/material.dart';
class DragSheet extends StatefulWidget {

  @override
  _DragSheetState createState() => _DragSheetState();
}

class _DragSheetState extends State<DragSheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Draggable Sheet', style: TextStyle(fontSize: 30,),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            bottom: 150,
            left: 0,
            right: 0,
            child: Container(
              color: Color.fromARGB(100, 100, 100, 100),
              child: Image.network(
                'https://image.winudf.com/v2/image1/Y29tLnJvdmlvLmFiY2FzdWFsX2ljb25fMTYxMDY0NDc2MV8wNDQ/icon.png?w=&fakeurl=1',
                fit: BoxFit.fill,
              ),
            ),
          ),
          DraggableScrollableSheet(
            builder: (BuildContext context, ScrollController scrollController){
              return Container(
                color: Colors.white,
                child: ListView.builder(
                    controller: scrollController,
                    itemCount: 20,
                    itemBuilder: (BuildContext context, int index){
                      return ListTile(title : Text('Item $index'),);
                    }),
              );
            },
          )
        ],
      ),
    );
  }
}
