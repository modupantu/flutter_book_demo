import 'package:flutter/material.dart';
import './data/listData.dart';

class MyRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: IconContainer(Icons.home, Colors.black, 32.0),
        ),
        Expanded(
          flex: 2,
          child: IconContainer(Icons.ac_unit, Colors.yellow, 32.0),
        ),
      ],
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
        body: MyRow(),
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}

// 图标组件

class IconContainer extends StatelessWidget {
  double size = 32.0;
  Color color = Colors.red;
  IconData icon;
  IconContainer(this.icon, this.color, this.size);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      width: 100.0,
      color: this.color,
      child: Center(
        child: Icon(this.icon, size: this.size, color: Colors.red),
      ),
    );
  }
}
