import 'package:flutter/material.dart';

class Seman extends StatefulWidget {

   @override
   _SemanState createState() => _SemanState();
 }

 class _SemanState extends State<Seman> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(title: Text('Semantics & MergeSemantics', style: TextStyle(fontSize: 25,),),
         centerTitle: true,
         backgroundColor: Colors.blue,
       ),
       body: Container(
         height: 300,
         width: 300,
         child: Column(
           mainAxisAlignment: MainAxisAlignment.spaceAround,
           children: [
             Column(
               children: [
                 Text(
                   'Semantics Widget',
                   style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                 ),
                 SizedBox(
                   height: 20,
                 ),
                 Semantics(
                   child: ClipOval(
                     child: CircleAvatar(
                       maxRadius: 70,
                       child:Image.network(
                          'https://picsum.photos/250?image=9',
                         fit: BoxFit.cover,
                       ),
                     ),
                   ),
                   label: 'Company logo',
                 ),
               ],
             ),
             Column(
               children: [
                 Text(
                   'MergeSemantics',
                   style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                 ),
                 SizedBox(
                   height: 20,
                 ),
                 MergeSemantics(
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: <Widget>[
                       ListTile(
                         leading:
                         Icon(Icons.account_circle, semanticLabel: 'name'),
                         title: Text(
                           "Sarah Alyoya",
                           style: TextStyle(color: Colors.blue),
                         ),
                         onTap: () {},
                       ),
                       ListTile(
                         leading: Icon(
                           Icons.email,
                           semanticLabel: 'email',
                         ),
                         title: Text(
                           "wearedesigners.net",
                           style: TextStyle(color: Colors.blue),
                         ),
                         onTap: () {},
                       ),
                       ListTile(
                         leading:
                         Icon(Icons.business, semanticLabel: 'Company'),
                         title: Text(
                           "Address",
                           style: TextStyle(color: Colors.blue),
                         ),
                         onTap: () {},
                       ),
                     ],
                   ),
                 ),
               ],
             ),
           ],
         ),
       ),
     );
   }
 }
