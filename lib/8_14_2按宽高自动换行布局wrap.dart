/**
 * 作者： 魔都叛徒 2019/8/14.
 * 邮箱：caoruichun@yeah.net
 * wrap 按宽高自动换行布局
 */

import 'package:flutter/material.dart';
void main(){
  runApp(new MaterialApp(
    title: 'wrap按宽高自动换行布局',
    home: new MyApp(),
  ));
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text('wrap'),
      ),
      body: Wrap(
        spacing: 8.0,
        runSpacing: 4.0,
        children: <Widget>[
          Chip(
          //添加圆角头像
          avatar: CircleAvatar(
            backgroundColor: Colors.lightGreen.shade800, child: new Text('123',style: TextStyle(fontSize: 10.0),),),
            label: Text('西门吹雪'),
          ),
          Chip(
            //添加圆角头像
            avatar: CircleAvatar(
              backgroundColor: Colors.lightGreen.shade800, child: new Text('123',style: TextStyle(fontSize: 10.0),),
            ),
            label: Text('西门吹雪'),
          ),
          Chip(
            //添加圆角头像
            avatar: CircleAvatar(
              backgroundColor: Colors.lightGreen.shade800, child: new Text('123',style: TextStyle(fontSize: 10.0),),
            ),
            label: Text('西门吹雪'),
          ),
          Chip(
           //添加圆角头像
            avatar: CircleAvatar(
              backgroundColor: Colors.lightGreen.shade800, child: new Text('123',style: TextStyle(fontSize: 10.0),),
            ),
            label: Text('西门吹雪'),
          ),
        ],
      ),
    );
  }
}