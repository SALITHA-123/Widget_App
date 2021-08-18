import 'package:flutter/material.dart';

class AniHero extends StatefulWidget {

  @override
  _AniHeroState createState() => _AniHeroState();
}

class _AniHeroState extends State<AniHero> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hero', style: TextStyle(fontSize: 30,),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Hero(
        tag: 'Angry Bird',
        flightShuttleBuilder: (BuildContext flightContext,
            Animation<double> animation,
            HeroFlightDirection flightDirection,
            BuildContext fromHeroContext,
            BuildContext toHeroContext,) {
          return AnimatedBuilder(
            animation: animation,
            builder: (context, child) =>
                Container(
                  color: Colors.red.withOpacity(1 - animation.value),
                ),
          );
        },
        child: Image.network(
            'https://image.winudf.com/v2/image1/Y29tLnJvdmlvLmFiY2FzdWFsX2ljb25fMTYxMDY0NDc2MV8wNDQ/icon.png?w=&fakeurl=1'
        ),
      ),
    );
  }
}
