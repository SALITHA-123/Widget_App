import 'package:flutter/material.dart';
import 'package:first_app/Paintings/ClipPaths.dart';

class ClipPaths extends StatefulWidget {

  @override
  _ClipPathsState createState() => _ClipPathsState();
}

class _ClipPathsState extends State<ClipPaths> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Clip Path", style: TextStyle(fontSize: 30,),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),


      body: ClipPath(
        clipper: TriangleClipper(),
        clipBehavior: Clip.antiAlias ,
        child: Image.network(
          'https://image.winudf.com/v2/image1/Y29tLnJvdmlvLmFiY2FzdWFsX2ljb25fMTYxMDY0NDc2MV8wNDQ/icon.png?w=&fakeurl=1',
        ),
      ),

    );
  }
}


class TriangleClipper extends CustomClipper<Path> {
  @override
        Path getClip(Size size) {
        final path = Path();
        path.moveTo(size.width/2, 0.0);
        path.lineTo(size.width, size.height);
        path.lineTo(0.0, size.height);
        path.close();
        return path;
  }
  @override
  bool shouldReclip(TriangleClipper oldClipper) => false;
  }
