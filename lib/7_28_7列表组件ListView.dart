/**
 * 作者： 魔都叛徒 2019/7/28.
 * 邮箱：caoruichun@yeah.net
 * 列表组件ListView
 */

import 'package:flutter/material.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final title= '基础列表示例';
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
//        添加基础列表
        body: ListView(
//          添加静态数据
        children: <Widget>[
          ListTile(
//            添加图标
          leading: Icon(Icons.alarm),
//           添加文字
          title: Text('alarm'),
          ),
          ListTile(
//            添加图标
            leading: Icon(Icons.phone),
//           添加文字
            title: Text('phone'),
          ),
          ListTile(
//            添加图标
            leading: Icon(Icons.airplay),
//           添加文字
            title: Text('airplay'),
          ),
          ListTile(
//            添加图标
            leading: Icon(Icons.alarm),
//           添加文字
            title: Text('alarm'),
          ),
          ListTile(
//            添加图标
            leading: Icon(Icons.alarm),
//           添加文字
            title: Text('alarm'),
          ),
          ListTile(
//            添加图标
            leading: Icon(Icons.alarm),
//           添加文字
            title: Text('alarm'),
          ),
          ListTile(
//            添加图标
            leading: Icon(Icons.alarm),
//           添加文字
            title: Text('alarm'),
          ),
          ListTile(
//            添加图标
            leading: Icon(Icons.alarm),
//           添加文字
            title: Text('alarm'),
          ),
          ListTile(
//            添加图标
            leading: Icon(Icons.alarm),
//           添加文字
            title: Text('alarm'),
          ),
          ListTile(
//            添加图标
            leading: Icon(Icons.alarm),
//           添加文字
            title: Text('alarm'),
          ),

        ],
        ),
      ),
    );
  }
  
}