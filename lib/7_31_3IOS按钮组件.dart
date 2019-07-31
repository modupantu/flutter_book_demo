/**
 * 作者： 魔都叛徒 2019/7/31.
 * 邮箱：caoruichun@yeah.net
 *按钮组件（CupertinoButton）
 */
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '按钮组件（CupertinoButton）',
      home: Scaffold(
        appBar: AppBar(
          title: Text('按钮组件'),
        ),
        body: Center(
          child: CupertinoButton(
            child: Text('按钮组件'),
            color: Colors.blue,
            onPressed: (){},
          ),
        ),
      ),
    );
  }
}