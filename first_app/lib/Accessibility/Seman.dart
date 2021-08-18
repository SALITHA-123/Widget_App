import 'package:flutter/material.dart';

class Seman extends StatefulWidget {

   @override
   _SemanState createState() => _SemanState();
 }

 class _SemanState extends State<Seman> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
         appBar: AppBar(title: Text("Semantics",
           textAlign: TextAlign.center,
           style: TextStyle(
             fontFamily: "Roboto",
             fontSize: 30,
             fontWeight: FontWeight.bold,
             color: Colors.grey.shade800,
           ),
         ),
         ),
         body: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Semantics(
               label: "This is my First Application",
               enabled: true,
               readOnly: true,
             )
           ],
         )
     );
   }
 }
