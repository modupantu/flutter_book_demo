/**
 * 作者： 魔都叛徒 2019/8/7.
 * 邮箱：caoruichun@yeah.net
 * 列表表格滚动布局ListView
 */

import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title: '滚动布局示例',
    home: new MyApp(),
  ));
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: ListView(
        children: <Widget>[
          new Center(
            child: new Text('111111',style: new TextStyle(
              fontSize: 30.0
            ),),

          ),
          new Center(
            child: new Text('2222',style: new TextStyle(
                fontSize: 16.0
            ),),
          ),
          new Center(
            child: new Text('''
            qweqweeeeeeeeeeee1111111111111111111111111222222222222222222eeeeeeeee
            eeeeeeeeeewwwwwwwwwwwqqqqqqqqqqq
            qqqqqqqqqqqqqqqqqqq
            wwwwwwwwwwwwwwwwwweeeeeeeeee
            wwwwwwwwwwwwwwwwwwwwww
            qqqqqqqqqqqqqqqqqqqqq
            rrrrrrrrrrrrrrrrrrrqqqqqqqqqq
            tttttttttttqqqqqqqqqqqqww
            ''',style: new TextStyle(
                fontSize: 16.0
            ),),
          ),
        ],
      ),
    );
  }
}