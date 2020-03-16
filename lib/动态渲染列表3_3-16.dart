import 'package:flutter/material.dart';
import './data/listData.dart';

class MyImages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listData.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(listData[index]["title"]),
        );
      },
    );
  }
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

void main() {
  runApp(MyApp());
}
