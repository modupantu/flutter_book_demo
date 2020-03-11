import "package:flutter/material.dart";

void main() {
  runApp(MyApp1());
}

class MyApp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("flutter demo"),
        ),
        body: homeContent(),
      ),
    );
  }
}

class homeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 200.0,
        height: 300.0,
        transform: Matrix4.rotationZ(0.8),
        decoration: BoxDecoration(
          color: Colors.yellow,
          border: Border.all(
            color: Colors.red,
            width: 2.0,
          ),
        ),
        child: Text(
          '文本文本文本22文本文本文本文本文本文本文本11111111',
          textAlign: TextAlign.left,
          overflow: TextOverflow.fade,
          maxLines: 1,
          style: TextStyle(
            fontSize: 20.0,
          ),
        ),
      ),
    );
  }
}
