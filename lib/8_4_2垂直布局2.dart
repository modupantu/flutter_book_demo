/**
 * 作者： 魔都叛徒 2019/8/4.
 * 邮箱：caoruichun@yeah.net
 * 垂直布局
 */

import 'package:flutter/material.dart';

void main() =>runApp(MaterialApp(
  title: '垂直布局',
  home: new LayoutDemo(),
));

class LayoutDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('垂直布局'),

      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,//水平方向靠左对齐
        mainAxisSize: MainAxisSize.min,//主轴方向最小化处理
        children: <Widget>[
          new Text('111111111111111111'),
          new Text('111111111111111111'),
          new Text('111111111111111111'),
          new Text('111111111111111111'),
          new Text('111111111111111111',style: TextStyle(fontSize: 36.0),),
        ],
      ),
    );
  }
}