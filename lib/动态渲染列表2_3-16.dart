import 'package:flutter/material.dart';
import './data/listData.dart';

class MyImages extends StatelessWidget {
  List list = new List();
  MyImages() {
    for (int i = 0; i < 20; i++) {
      list.add(
        ListTile(
          title: Text("woshi $i"),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: list.length,
      itemBuilder: (context, index) {
        return list[index];
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
