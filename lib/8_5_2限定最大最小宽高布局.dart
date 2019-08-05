/**
 * 作者： 魔都叛徒 2019/8/5.
 * 邮箱：caoruichun@yeah.net
 * ConstrainedBox 限定最大最小宽高布局
 */

import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: ConstrainedBox(
        constraints: BoxConstraints(
            minWidth: 150.0,
            minHeight: 150.0,
            maxHeight: 220.0,
            maxWidth: 220.0),
        child: Container(
          width: 300.0,
          height: 300.0,
          color: Colors.green,
        ),
      ),

    );
  }
}

void main (){
  runApp(MaterialApp(
    title: '',
    home: LayoutDemo(),
  ));
}