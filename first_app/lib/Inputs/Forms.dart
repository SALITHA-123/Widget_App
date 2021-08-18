import 'package:flutter/material.dart';

class FlutForm extends StatefulWidget {
  const FlutForm({Key? key}) : super(key: key);

  @override
  _FlutFormState createState() => _FlutFormState();
}

class _FlutFormState extends State<FlutForm> {

    final _formKey = GlobalKey<FormState>();

    @override
    Widget build(BuildContext context) {
      // Build a Form widget using the _formKey created above.
      return Scaffold(
        appBar: AppBar(title: Text('Forms', style: TextStyle(fontSize: 30,),),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
       body: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(
                icon: const Icon(Icons.person),
                hintText: 'Enter your name',
                labelText: 'Name',
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                icon: const Icon(Icons.phone),
                hintText: 'Enter a phone number',
                labelText: 'Phone',
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                icon: const Icon(Icons.calendar_today),
                hintText: 'Enter your date of birth',
                labelText: 'Birthday',
              ),
            ),
            new Container(
                padding: const EdgeInsets.only(left: 150.0, top: 40.0),
                child: new RaisedButton(
                  child: const Text('Submit'),
                  onPressed: null,
                ),
            ),
          ],
        ),
        ),
      );
  }
}
