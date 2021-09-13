import 'package:flutter/material.dart';

class Radios extends StatefulWidget {
  const Radios({Key? key}) : super(key: key);

  @override
  _RadiosState createState() => _RadiosState();
}

class _RadiosState extends State<Radios> {

  int? _groupValue;

  late List<FocusNode> _focusNodes;

  @override
  void initState() {
    _focusNodes = Iterable<int>.generate(3)
        .map((e) => FocusNode())
        .toList();

    _focusNodes[0].requestFocus();
  }

  Widget _buildItem(String text, int value, FocusNode focusNode) {
    return ListTile(
      title: Text(text),
      leading: Radio<int>(
        groupValue: _groupValue,
        value: value,
        onChanged: (int? value) {
          setState(() {
            _groupValue = value;
          });
        },
        hoverColor: Colors.yellow,
        activeColor: Colors.pink,
        focusColor: Colors.purple,
        fillColor: MaterialStateColor.resolveWith((Set<MaterialState> states) {
          if (states.contains(MaterialState.hovered)) {
            return Colors.orange;
          } else if (states.contains(MaterialState.selected)) {
            return Colors.teal;
          } if (states.contains(MaterialState.focused)) {
            return Colors.blue;
          } else {
            return Colors.black12;
          }
        }),
        overlayColor: MaterialStateColor.resolveWith((Set<MaterialState> states) {
          if (states.contains(MaterialState.hovered)) {
            return Colors.lightGreenAccent;
          } if (states.contains(MaterialState.focused)) {
            return Colors.brown;
          } else {
            return Colors.white;
          }
        }),
        splashRadius: 25,
        toggleable: true,
        visualDensity: VisualDensity.compact,
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        focusNode: focusNode,
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Radio', style: TextStyle(fontSize: 30,),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          children: [
            _buildItem("One", 1, _focusNodes[0]),
            _buildItem("Two", 2, _focusNodes[1]),
            _buildItem("Three", 3, _focusNodes[2]),
          ],
        ),
      ),
    );
  }
}
