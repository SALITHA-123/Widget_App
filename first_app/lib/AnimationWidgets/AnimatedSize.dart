import 'package:flutter/material.dart';

class AniSize extends StatefulWidget {

  @override
  _AniSizeState createState() => _AniSizeState();
}

class _AniSizeState extends State<AniSize> with TickerProviderStateMixin{

  double _size = 150;

  Widget _buildChild() {
    return Container(
      width: _size,
      height: _size,
      // color: Colors.teal,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              'https://image.winudf.com/v2/image1/Y29tLnJvdmlvLmFiY2FzdWFsX2ljb25fMTYxMDY0NDc2MV8wNDQ/icon.png?w=&fakeurl=1'
          ),
        ),
      ),
    );
  }

  Widget _buildAnimatedSize() {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(),
      ),
      child: AnimatedSize(
        vsync: this,
        duration: const Duration(seconds: 2),
        // alignment: Alignment(-0.75, -0.75),
        // curve: Curves.easeInCubic,
        child: _buildChild(),
      ),
    );
  }

  Widget _buildSizeAnimationWithAnimatedContainer() {
    return AnimatedContainer(
      width: _size,
      height: _size,
      color: Colors.teal,
      duration: const Duration(seconds: 2),
      child: _buildChild(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Animated Size', style: TextStyle(fontSize: 30,),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildAnimatedSize(),
            // _buildSizeAnimationWithAnimatedContainer(),
            ElevatedButton(
              child: Text('Change Size'),
              onPressed: () {
                setState(() {
                  _size = _size == 150 ? 250 : 150;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
