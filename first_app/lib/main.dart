import 'package:flutter/material.dart';
import 'Catalog.dart';

void main(){
  runApp(MyApp());
}
class MyApp  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.white),
      home: Catalog(),
    );
  }
}