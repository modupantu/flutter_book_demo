/**
 * 作者： 魔都叛徒 2019/8/5.
 * 邮箱：caoruichun@yeah.net
 * 宽高尺寸处理
 */

import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: SizedBox(
        width: 200.0,
        height: 300.0,
        child: Card(
          child: Text('sizeBox',style: TextStyle(
            fontSize: 36.0
          ),),
        ),
      ),
    );
  }
}
void main()=>runApp(MaterialApp(
  title: '',
  home: LayoutDemo(),
));