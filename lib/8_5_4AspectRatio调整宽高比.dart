/**
 * 作者： 魔都叛徒 2019/8/5.
 * 邮箱：caoruichun@yeah.net
 * AspectRatio调整宽高比
 */

import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('asd'),
      ),
      body: Container(
        height: 200.0,
        child: new AspectRatio(
          aspectRatio: 1.5,
          child: new Container(
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}
void main() =>runApp(MaterialApp(
  title: 'As',
  home: LayoutDemo(),
));