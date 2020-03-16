import 'package:flutter/material.dart';
import './data/listData.dart';

class MyGridView extends StatelessWidget {
  Widget _getListData(context, index) {
    return Container(
      child: Column(
        children: <Widget>[
          Image.network(listData[index]["images"]),
          Text(listData[index]["title"])
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
      ),
      itemCount: listData.length,
      itemBuilder: _getListData,
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
