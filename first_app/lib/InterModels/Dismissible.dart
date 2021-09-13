import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Dismiss extends StatefulWidget {

  @override
  _DismissState createState() => _DismissState();
}

class _DismissState extends State<Dismiss> {

  final stories = [
    StoryModel(title: 'STORY', imageUrl: ''),
    StoryModel(title: 'STORY', imageUrl: ''),
    StoryModel(title: 'STORY', imageUrl: ''),
    StoryModel(title: 'STORY', imageUrl: ''),
    StoryModel(title: 'STORY', imageUrl: ''),
    StoryModel(title: 'STORY', imageUrl: ''),
  ];

  @override
  Widget build(BuildContext context) {
    final padding = MediaQuery
        .of(context)
        .padding;
    return Scaffold(
      appBar: AppBar(
        title: Text('Dismissible', style: TextStyle(fontSize: 30,),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        padding: padding,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text('Dismissible', style: TextStyle(fontSize: 24)),
            ),
            SizedBox(
              height: 120,
              child: ListView.separated(
                padding: EdgeInsets.symmetric(horizontal: 20),
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, int i) => StoryWidget(story: stories[i]),
                separatorBuilder: (_, int i) => SizedBox(width: 10),
                itemCount: stories.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class StoryWidget extends StatelessWidget {
  final StoryModel story;

  const StoryWidget({required this.story});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
      },
      child: Hero(
        tag: story.storyId,
        child: Container(
          height: 120,
          width: 88,
          padding: const EdgeInsets.all(8),
          child: Text(
            story.title,
            style: Theme.of(context)
                .textTheme
                .button!
                .copyWith(color: Colors.white),
          ),
          clipBehavior: Clip.antiAlias,
          alignment: Alignment.bottomLeft,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(story.imageUrl),
            ),
          ),
        ),
      ),
    );
  }
}


class StoryPage extends StatelessWidget {
  final StoryModel story;
  const StoryPage({required this.story});

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: story.storyId,
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Text(
          story.title,
          style: Theme.of(context)
              .textTheme
              .button!
              .copyWith(color: Colors.white),
        ),
        clipBehavior: Clip.antiAlias,
        alignment: Alignment.bottomLeft,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(story.imageUrl),
          ),
        ),
      ),
    );
  }
}

class StoryModel {
  final storyId = UniqueKey();
  final String title;
  String imageUrl;

  String get nextVehicleUrl =>
      'https://source.unsplash.com/collection/1989985/${Random().nextInt(20) + 400}x${Random().nextInt(20) + 800}';

  StoryModel({required this.title, required this.imageUrl}) {
    imageUrl = nextVehicleUrl;
  }
}