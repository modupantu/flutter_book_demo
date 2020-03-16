import 'package:flutter/material.dart';
import './data/listData.dart';

class MyGridView extends StatelessWidget {
  List<Widget> _getListData() {
    List<Widget> list = new List();
    for (int i = 0; i < 20; i++) {
      list.add(
        Container(
          alignment: Alignment.center,
          color: Colors.blue,
          child: Text(
            "这是一条数据$i",
            style: TextStyle(
              color: Colors.yellow,
              fontSize: 20,
            ),
          ),
        ),
      );
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2, //一行的widget 数量
      crossAxisSpacing: 10.0,
      mainAxisSpacing: 10.0,
      padding: EdgeInsets.all(10),
      children: _getListData(),
      childAspectRatio: 2,
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
