import 'package:flutter/material.dart';

class CupTrans extends StatefulWidget {

  @override
  _CupTransState createState() => _CupTransState();
}

class _CupTransState extends State<CupTrans> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Transition', style: TextStyle(fontSize: 30,),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(_createRoute());
          },
          child: const Text('Next...>>',style: TextStyle(fontSize: 25),),
        ),
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const Page2(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return child;
    },
  );
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Back'),
        backgroundColor: Colors.blue,
      ),
      body: const Center(
        child: Text('This is Page 02',style: TextStyle(fontSize: 25),),
      ),
    );
  }

}
