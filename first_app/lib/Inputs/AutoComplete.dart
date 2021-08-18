import 'package:flutter/material.dart';

class AutoCom extends StatefulWidget {

  @override
  _AutoComState createState() => _AutoComState();
}

class _AutoComState extends State<AutoCom> {

  static const List<String> Options = <String>[
    'Commercial VISA',
    'Sampath VISA',
    'Seylan VISA',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Auto Complete', style: TextStyle(fontSize: 30,),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Autocomplete<String>(
            optionsBuilder: (TextEditingValue textEditingValue) {
              if (textEditingValue.text == '') {
               return const Iterable<String>.empty();
          }
           return Options.where((String option) {
          return option.contains(textEditingValue.text.toLowerCase());
           }
         );
        },
      ),
    );
  }
}
