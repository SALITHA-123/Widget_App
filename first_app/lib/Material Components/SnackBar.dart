import 'package:flutter/material.dart';

class Snack extends StatefulWidget {
  const Snack({Key? key}) : super(key: key);

  @override
  _SnackState createState() => _SnackState();
}

class _SnackState extends State<Snack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Snack Bar', style: TextStyle(fontSize: 30,),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: _MySnackBar(),
    );
  }
}

class _MySnackBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final _snackBar1 = SnackBar(
      content: Text('Snack Bar'),
    );

    final _snackBar2 = SnackBar(
      content: Text('Snack Bar'),
      duration: const Duration(seconds: 10),
      action: SnackBarAction(
        label:'Click',
        onPressed: () {
          print('Clicked');
        },
        textColor: Colors.white,
        disabledTextColor: Colors.grey,
      ),
      onVisible: () {
        print('This is Snack Bar');
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
      behavior: SnackBarBehavior.floating,
      margin: EdgeInsets.all(30.0),
      padding: EdgeInsets.all(15.0),
    );

    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('Show SnackBar '),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(_snackBar1);
              },
            ),
          ],
        )
    );
  }
}
