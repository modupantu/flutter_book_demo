import 'package:flutter/material.dart';
import './data/listData.dart';

class MyGridView extends StatelessWidget {
  List<Widget> _getListData() {
    var templateList = listData.map((value) {
      return Container(
        child: Column(
          children: <Widget>[
            Image.network(value["images"]),
            Text(value["title"])
          ],
        ),
      );
    });
    return templateList.toList();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2, //一行的widget 数量
      crossAxisSpacing: 10.0,
      mainAxisSpacing: 10.0,
      padding: EdgeInsets.all(10),
      children: _getListData(),
      // childAspectRatio: 2,
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
        body: MyGridView(),
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}
