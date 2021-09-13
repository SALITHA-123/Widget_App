import 'package:flutter/material.dart';

class ExSeman extends StatefulWidget {
  const ExSeman({Key? key}) : super(key: key);

  @override
  _ExSemanState createState() => _ExSemanState();
}

class _ExSemanState extends State<ExSeman> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Exclude Semantics', style: TextStyle(fontSize: 30,),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: SemanticsExample(),
    );
  }
}

class SemanticsExample extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _SemanticsExampleState ();
  }
}

class _SemanticsExampleState extends State<SemanticsExample> {

  bool _showCard = false;
  static const TextStyle textStyle = const TextStyle(color: Colors.white);

  Widget _buildCard() {
    return Card(
      color: Colors.teal,
      child: SizedBox(
        width: 200,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
              leading: const FlutterLogo(),
              title: Text('Flutter Tutorial', style: textStyle),
              subtitle: Text('by Woolha', style: textStyle),
            ),
            ButtonTheme(
              child: ButtonBar(
                children: <Widget>[
                  TextButton(
                    child: const Text('OK', style: textStyle),
                    onPressed: () => setState(() { _showCard = false; }),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const ExcludeSemantics(
            child: const Text('........'),
          ),
          SizedBox(
            width: 400,
            height: 160,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Positioned(
                  bottom: 0,
                  child: OutlinedButton(
                    child: Text('Show Card'),
                    onPressed: () => setState(() { _showCard = true; }),
                  ),
                ),
                BlockSemantics(
                  blocking: _showCard,
                  child: Visibility(
                    visible: _showCard,
                    child: _buildCard(),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}