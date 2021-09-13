import 'package:flutter/material.dart';

class InterViewer extends StatefulWidget {

  @override
  _InterViewerState createState() => _InterViewerState();
}

class _InterViewerState extends State<InterViewer> {
  static Matrix4 matrix4 = Matrix4(
      2, 0, 0, 0,
      0, 1, 0, 0,
      0, 0, 1, 0,
      0, 0, 0, 1
  );
  TransformationController controller = TransformationController(matrix4);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Interactive Viewer', style: TextStyle(fontSize: 30,),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body:Center(
        child: InteractiveViewer(
          transformationController: controller,
          //          alignPanAxis: true,
          //          panEnabled: false,
          //          scaleEnabled: false,
          //          constrained: false,
          //          minScale: 0.5,
          //          maxScale: 10,
          child: Image.network('https://image.winudf.com/v2/image1/Y29tLnJvdmlvLmFiY2FzdWFsX2ljb25fMTYxMDY0NDc2MV8wNDQ/icon.png?w=&fakeurl=1'),
          onInteractionStart: (ScaleStartDetails scaleStartDetails) {
            print('Interaction Start - Focal point: ${scaleStartDetails.focalPoint}'
                ', Local focal point: ${scaleStartDetails.localFocalPoint}'
            );
          },
          onInteractionEnd: (ScaleEndDetails scaleEndDetails) {
            print('Interaction End - Velocity: ${scaleEndDetails.velocity}');
          },
          onInteractionUpdate: (ScaleUpdateDetails scaleUpdateDetails) {
            print('Interaction Update - Focal point: ${scaleUpdateDetails.focalPoint}'
                ', Local focal point: ${scaleUpdateDetails.localFocalPoint}'
                ', Scale: ${scaleUpdateDetails.scale}'
                ', Horizontal scale: ${scaleUpdateDetails.horizontalScale}'
                ', Vertical scale: ${scaleUpdateDetails.verticalScale}'
                ', Rotation: ${scaleUpdateDetails.rotation}'
            );
          },
        ),
      ),
    );
  }
}
