/**
 * 作者： 魔都叛徒 2019/8/5.
 * 邮箱：caoruichun@yeah.net
 * LimitedBox 限定最大宽高布局
 */

import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Row(
        children: <Widget>[
          Container(
            color: Colors.lightBlue,
            width: 100.0,
          ),
          LimitedBox(
            maxWidth: 150.0,
            child:Container(
              color: Colors.lightGreen,
              width: 250.0,
            ),
          )
        ],
      ),
    );
  }
}

void main()=>runApp(MaterialApp(
  title: '',
  home: LayoutDemo(),
));