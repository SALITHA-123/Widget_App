import 'package:flutter/material.dart';

class FormFields extends StatefulWidget {

  @override
  _FormFieldsState createState() => _FormFieldsState();
}

class _FormFieldsState extends State<FormFields> {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final _user = User();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Fields', style: TextStyle(fontSize: 30,),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(
            vertical: 16.0,
            horizontal: 16.0,
          ),
          child: Builder(
            builder: (context) =>
                Form(
                  key: _formKey,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        TextFormField(
                          decoration: InputDecoration(labelText: 'First name'),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter your first name';
                            }
                          },
                          onSaved: (val) =>
                              setState(() => _user.firstName = val!),
                        ),
                        Container(
                          padding: const EdgeInsets.fromLTRB(0, 50, 0, 20),
                          child: Text('Subscribe'),
                        ),
                        SwitchListTile(
                          title: const Text('Monthly Newsletter'),
                          value: _user.newsletter,
                          onChanged: (bool val) =>
                              setState(() => _user.newsletter = val),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 16.0, horizontal: 16.0),
                          child: RaisedButton(
                            onPressed: () {
                              final form = _formKey.currentState;
                              if (form!.validate()) {
                                form!.save();
                                _user.save();
                                _showDialog(context);
                              }
                            },
                            child: Text('Save'),
                          ),
                        ),
                      ]),
                ),
          ),
        ),
      ),
    );
  }

  _showDialog(BuildContext context) {
    Scaffold.of(context)
        .showSnackBar(SnackBar(content: Text('Submitting form')));
  }
}

class User {
  String firstName = '';
  bool newsletter = false;
  save() {
    print('saving user using a web service');
  }
}
