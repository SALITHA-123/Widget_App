import 'package:flutter/material.dart';

class CusSingleLayout extends StatefulWidget {

  @override
  _CusSingleLayoutState createState() => _CusSingleLayoutState();
}

class _CusSingleLayoutState extends State<CusSingleLayout> {
  final ValueNotifier<Size> _size = ValueNotifier<Size>(const Size(200.0, 100.0));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Custom SingleChild Layout', style: TextStyle(fontSize: 30,),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          CustomSingleChildLayout(
            delegate: CustomLayoutDelegate(_size),
            child: Container(
              color: Colors.greenAccent,
              width: 200,
              height: 300,
            ),
          ),
        ],
      ),

    );
  }
}

class CustomLayoutDelegate extends SingleChildLayoutDelegate {

  CustomLayoutDelegate(this.size) : super(relayout: size);

  final ValueNotifier<Size> size;

  @override
  Size getSize(BoxConstraints constraints) {
    return size.value;
  }

  @override
  BoxConstraints getConstraintsForChild(BoxConstraints constraints) {
    return BoxConstraints.tight(size.value / 2);
  }

  @override
  Offset getPositionForChild(Size size, Size childSize) {
    return Offset(size.width / 4, size.height / 4);
  }

  @override
  bool shouldRelayout(CustomLayoutDelegate oldDelegate) {
    return size != oldDelegate.size;
  }
}
