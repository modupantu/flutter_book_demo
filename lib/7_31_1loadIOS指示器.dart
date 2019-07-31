/**
 * 作者： 魔都叛徒 2019/7/30.
 * 邮箱：caoruichun@yeah.net
 * TODO ios风格的组件
 * CupertinoActivityIndicator 组件
 */
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main()=>runApp(MyApp());
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CupertinoActivityIndicator 组件',
      home: Scaffold(
        appBar: AppBar(
          title: Text('CupertinoActivityIndicator 组件'),
        ),
        body: Center(
          child: CupertinoActivityIndicator(
            radius: 60.0,//值越大加载的图像越大
          ),
        ),
      ),
    );
  }
}