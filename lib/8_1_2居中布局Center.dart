/**
 * 作者： 魔都叛徒 2019/8/1.
 * 邮箱：caoruichun@yeah.net
 * 居中布局 center
 */

import 'package:flutter/material.dart';
void main()=>runApp(new MaterialApp(
  title: '居中布局 center',
  home: new LayoutDemo(),
));

class LayoutDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('居中布局 center'),
      ),
      body:Center(
        child: Text('Hello Flutter',style: TextStyle(fontSize: 36.0,),),
      ),
    );
  }
}