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
        children: <Widget>[
          new Text('flutter'),
          Text('垂直布局'),
          Expanded(
        child: FittedBox(
          fit: BoxFit.contain,
          child: const FlutterLogo(),
        ),
    )
        ],
      ),
    );
  }
}