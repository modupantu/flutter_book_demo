/**
 * 作者： 魔都叛徒 2019/8/4.
 * 邮箱：caoruichun@yeah.net
 * TODO alignment栈布局
 */

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Stack布局 Alignment',
    home: new MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var stack = new Stack(
//      子组件左上叫对齐
      alignment: Alignment.topLeft,
      children: <Widget>[
        new CircleAvatar(
          backgroundImage: AssetImage('images/qq.jpg'),
          radius: 100.0,
        ),
//      上面加个容器，内部放一段文字
        new Container(
          decoration: BoxDecoration(color: Colors.black38),
          child: Text(
            'aaaaaaaaaaa',
            style: TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('222222222'),
      ),
      body: Center(
        child: stack,
      ),
    );
  }
}
