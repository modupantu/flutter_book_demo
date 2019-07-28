/**
 * 作者： 魔都叛徒 2019/7/28.
 * 邮箱：caoruichun@yeah.net
 * 图标组件（图表组件不可交互）
 *
 */

import 'package:flutter/material.dart';

void main()=>runApp(
  new MaterialApp(
   title: '图标组件示例',
   home: new LayoutDemo(),
  )
);

class LayoutDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('图标组件示例'),
      ),
      body: new Icon(Icons.phone,color: Colors.green[500],size: 80.0,),
    );
  }
}
