import 'package:flutter/material.dart';

class FutureBuild extends StatefulWidget {

  @override
  _FutureBuildState createState() => _FutureBuildState();
}
Future<String> getValue() async {
  await Future.delayed(Duration(seconds: 10));
  return 'Hello....';
}


class _FutureBuildState extends State<FutureBuild> {

  late Future<String> _value;

  @override
  initState() {
    super.initState();
    _value = getValue();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Future Builder', style: TextStyle(fontSize: 30,),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Center(
          child: FutureBuilder<String>(
            future: _value,
            initialData: 'App Name',
            builder: (
                BuildContext context,
                AsyncSnapshot<String> snapshot,
                ) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircularProgressIndicator(),
                    Visibility(
                      visible: snapshot.hasData,
                      child: Text(
                        "Loading",
                        style: const TextStyle(color: Colors.grey, fontSize: 36)
                      ),

                    )
                  ],
                );
              } else if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.hasError) {
                  return const Text('Error');
                } else if (snapshot.hasData) {
                  return Text('Loading',
                      style: const TextStyle(color: Colors.grey, fontSize: 36)
                  );
                } else {
                  return const Text('Empty data');
                }
              } else {
                return Text('State: ${snapshot.connectionState}');
              }
            },
          ),
        ),
      ),
    );

  }
}
