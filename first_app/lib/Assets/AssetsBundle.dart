import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';

class AssetsBun extends StatefulWidget {

  @override
  _AssetsBunState createState() => _AssetsBunState();
}

class _AssetsBunState extends State<AssetsBun> {

  Future<ByteData> load(String key) async {
    if (key == 'resources/test')
      return ByteData.view(Uint8List.fromList(utf8.encode('Hello World!')).buffer);
    return ByteData(0);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Text('Assets Bundle', style: TextStyle(fontSize: 30,),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
    );
  }
}

