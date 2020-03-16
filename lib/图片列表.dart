import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('123'),
        ),
        body: MyImages(),
      ),
    );
  }
}

class MyImages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Image.asset(
          'images/1.jpg',
          fit: BoxFit.cover,
        ),
        Image.asset(
          'images/1.jpg',
        ),
        Image.asset(
          'images/1.jpg',
        ),
        Image.asset(
          'images/1.jpg',
        ),
        Image.asset(
          'images/1.jpg',
        ),
      ],
    );
  }
}
